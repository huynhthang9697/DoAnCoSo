using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCoSo.Controllers
{
    public class GocLamDepController : Controller
    {
        // GET: TinTuc
        public ActionResult Index(int trang = 1, string ten = "", string tukhoa = "", string chuyenmucid = "")
        {
            int sotintuc = 2;
            ViewBag.SoTinTuc = sotintuc;
            List<MyPhamDB.TinTuc_Info> tintuc = MyPhamDB.TinTuc_Data.DanhSachBaiViet(trang, tukhoa, chuyenmucid, sotintuc);
            ViewBag.TongSoTinTuc = MyPhamDB.TinTuc_Data.TongSoTinTuc(tukhoa, chuyenmucid);
            ViewBag.ChuyenMucID = chuyenmucid;
            ViewBag.TuKhoa = tukhoa;
            ViewBag.TenDanhMuc = ten;
            return View(tintuc);
        }
        public ActionResult ChiTiet(string tintucid)
        {
            MyPhamDB.TinTuc_Info t = MyPhamDB.TinTuc_Data.LayTinTuc(tintucid);
            return View(t);
        }

        [HttpPost]
        public ActionResult XuLy(FormCollection f)
        {
            return RedirectToAction("Index", "GocLamDep", new { tukhoa = f["tukhoa"].ToString(), chuyenmucid = f["chuyenmucid"].ToString() });
        }
    }
}