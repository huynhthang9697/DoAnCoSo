using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPhamDB
{
    public static class TinTuc_Data
    {
               
        public static List<TinTuc_Info> DanhSachBaiViet(int trang = 1, string tukhoa = "", string chuyenmucid= "", int sotintuc = 3)
        {
            List<TinTuc_Info> items = new List<TinTuc_Info>();
            DBHelp db = new DBHelp();
            string dieukien = " WHERE 1=1";
            if (tukhoa != "")
                dieukien += " and TenTinTuc like @tukhoa";
            if (chuyenmucid != "")
                dieukien += " and ChuyenMucID = @chuyenmucid";
            db.SetCommandText("SELECT * FROM (SELECT *, ROW_NUMBER() OVER(ORDER BY NgayDang DESC) AS RowNum  FROM dbo.TinTuc "+ dieukien +") AS t WHERE t.RowNum BETWEEN (@trang-1)*@sotintuc+1 AND @trang*@sotintuc", System.Data.CommandType.Text);
            db.AddParameter("@trang", trang);
            db.AddParameter("@sotintuc", sotintuc);
            if(tukhoa != "")
                db.AddParameter("@tukhoa", "%" + tukhoa + "%");
            if (chuyenmucid != "")
                db.AddParameter("@chuyenmucid", chuyenmucid);
            System.Data.DataTable t = new System.Data.DataTable();
            db.FillDataTable(t);
            for (int i = 0; i < t.Rows.Count; i++)
            {
                TinTuc_Info item = new TinTuc_Info();
                item.Id = Guid.Parse(t.Rows[i]["id"].ToString());
                item.Tentintuc = t.Rows[i]["tentintuc"].ToString();
                item.Mota = t.Rows[i]["mota"].ToString();
                item.Chitiet = t.Rows[i]["chitiet"].ToString();
                item.Hinhanh = t.Rows[i]["hinhanh"].ToString();
                item.Ngaydang = DateTime.Parse(t.Rows[i]["ngaydang"].ToString());
                item.Chuyenmucid = Guid.Parse(t.Rows[i]["chuyenmucid"].ToString());
                item.Nguoidang = t.Rows[i]["nguoidang"].ToString();
                item.Video = t.Rows[i]["video"].ToString();
                items.Add(item);
            }
            return items;
        }
        public static int TongSoTinTuc(string tukhoa = "", string chuyenmucid = "")
        {
            int tongso = 10;
            DBHelp db = new DBHelp();
            string dieukien = " WHERE 1=1";
            if (tukhoa != "")
                dieukien += " and TenTinTuc like @tukhoa";
            if (chuyenmucid != "")
                dieukien += " and ChuyenMucID = @chuyenmucid";
            db.SetCommandText("SELECT count(*) as soluong FROM (SELECT *, ROW_NUMBER() OVER(ORDER BY NgayDang DESC) AS RowNum  FROM dbo.TinTuc " + dieukien + ") AS t", System.Data.CommandType.Text);
            if (tukhoa != "")
                db.AddParameter("@tukhoa", "%"+tukhoa+"%");
            if (chuyenmucid != "")
                db.AddParameter("@chuyenmucid", chuyenmucid);
            System.Data.DataTable t = new System.Data.DataTable();
            db.FillDataTable(t);
            tongso = int.Parse(t.Rows[0]["soluong"].ToString());
            return tongso;
        }
        public static TinTuc_Info LayTinTuc(string TinTucID)
        {
            TinTuc_Info item = new TinTuc_Info();
            DBHelp db = new DBHelp();
            db.SetCommandText("SELECT * FROM TinTuc WHERE id=@id", System.Data.CommandType.Text);
            db.AddParameter("@id", TinTucID);
            System.Data.DataTable t = new System.Data.DataTable();
            db.FillDataTable(t);
            if (t.Rows.Count > 0)
            {
                item.Id = Guid.Parse(t.Rows[0]["id"].ToString());
                item.Tentintuc = t.Rows[0]["tentintuc"].ToString();
                item.Mota = t.Rows[0]["mota"].ToString();
                item.Chitiet = t.Rows[0]["chitiet"].ToString();
                item.Hinhanh = t.Rows[0]["hinhanh"].ToString();
                item.Ngaydang = DateTime.Parse(t.Rows[0]["ngaydang"].ToString());
                item.Chuyenmucid = Guid.Parse(t.Rows[0]["chuyenmucid"].ToString());
                item.Nguoidang = t.Rows[0]["nguoidang"].ToString();
                item.Video = t.Rows[0]["video"].ToString();
            }
            return item;
        }
    }
}
