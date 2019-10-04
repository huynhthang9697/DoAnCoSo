using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPhamDB
{
    public class TinTuc_Info
    {
        #region Biến thành viên
        Guid _id, _chuyenmucid;
        string _tentintuc, _hinhanh, _noidung, _mota, _chitiet, _nguoidang, _video;
        DateTime _ngaydang;
        #endregion

        #region Thuộc tính
        public Guid Id { get => _id; set => _id = value; }
        public Guid Chuyenmucid { get => _chuyenmucid; set => _chuyenmucid = value; }
        public string Tentintuc { get => _tentintuc; set => _tentintuc = value; }
        public string Hinhanh { get => _hinhanh; set => _hinhanh = value; }
        public string Noidung { get => _noidung; set => _noidung = value; }
        public string Mota { get => _mota; set => _mota = value; }
        public string Chitiet { get => _chitiet; set => _chitiet = value; }
        public string Nguoidang { get => _nguoidang; set => _nguoidang = value; }
        public string Video { get => _video; set => _video = value; }
        public DateTime Ngaydang { get => _ngaydang; set => _ngaydang = value; }
        #endregion

        #region Hàm khởi tạo
        public TinTuc_Info() { }

        public TinTuc_Info(Guid id, Guid chuyenmucid, string tentintuc, string hinhanh, string noidung, string mota, string chitiet, string nguoidang, string video, DateTime ngaydang)
        {
            _id = id;
            _chuyenmucid = chuyenmucid;
            _tentintuc = tentintuc;
            _hinhanh = hinhanh;
            _noidung = noidung;
            _mota = mota;
            _chitiet = chitiet;
            _nguoidang = nguoidang;
            _video = video;
            _ngaydang = ngaydang;
        }

        


        #endregion
    }
}
