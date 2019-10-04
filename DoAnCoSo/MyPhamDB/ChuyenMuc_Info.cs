using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPhamDB
{
    public class ChuyenMuc_Info
    {
        #region Bien thanh vien
        Guid _id;
        string _tenchuyenmuc;        
        #endregion

        #region Thuoc tinh
        public Guid Id
        {
            get
            {
                return _id;
            }

            set
            {
                _id = value;
            }
        }

        public string Tenchuyenmuc
        {
            get
            {
                return _tenchuyenmuc;
            }

            set
            {
                _tenchuyenmuc = value;
            }
        }
        #endregion

        #region Ham khoi tao
        public ChuyenMuc_Info() { }

        public ChuyenMuc_Info(Guid _id, string _tenchuyenmuc)
        {
            this._id = _id;
            this._tenchuyenmuc = _tenchuyenmuc;
        }
        #endregion

    }
}
