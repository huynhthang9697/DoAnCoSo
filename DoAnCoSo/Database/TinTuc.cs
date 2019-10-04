using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
+
namespace Database
{
    public static class TinTuc
    {
        public IEnumerable<TinTuc> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<TinTuc> model = db.TinTucs;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.UserName.Contains(searchString) || x.Name.Contains(searchString));
            }

            return model.OrderByDescending(x => x).ToPagedList(page, pageSize);
        }
    }
}
