using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPhamDB
{
    public static class ChuyenMuc_Data
    {
        public static List<ChuyenMuc_Info> DanhSachChuyenMuc()
        {
            List<ChuyenMuc_Info> items = new List<ChuyenMuc_Info>();
            DBHelp db = new DBHelp();
            db.SetCommandText("SELECT * from ChuyenMuc", System.Data.CommandType.Text);
            System.Data.DataTable t = new System.Data.DataTable();
            db.FillDataTable(t);
            for(int i=0; i<t.Rows.Count; i++)
            {
                ChuyenMuc_Info item = new ChuyenMuc_Info();
                item.Id = Guid.Parse(t.Rows[i]["id"].ToString());
                item.Tenchuyenmuc = t.Rows[i]["tenchuyenmuc"].ToString();
                items.Add(item);
            }
            return items;
        }

        public static string LayTenChuyenMuc(string chuyenmucid)
        {
            string item = "";
            DBHelp db = new DBHelp();
            db.SetCommandText("SELECT * FROM ChuyenMuc WHERE ID=@id", System.Data.CommandType.Text);
            db.AddParameter("@id", chuyenmucid);
            System.Data.DataTable t = new System.Data.DataTable();
            db.FillDataTable(t);
            if (t.Rows.Count > 0)
            {
                item = t.Rows[0]["tenchuyenmuc"].ToString();
            }
            return item;
        }

        public static int SoLuongTinTuc(string chuyenmucid)
        {
            int items = 0;
            DBHelp db = new DBHelp();
            db.SetCommandText("SELECT Count(*) as soluong from TinTuc Where ChuyenMucID = @ChuyenMucID", System.Data.CommandType.Text);
            db.AddParameter("@ChuyenMucID", chuyenmucid);
            System.Data.DataTable t = new System.Data.DataTable();
            db.FillDataTable(t);
            items = int.Parse(t.Rows[0]["soluong"].ToString());
            return items;
        }
    }
}
