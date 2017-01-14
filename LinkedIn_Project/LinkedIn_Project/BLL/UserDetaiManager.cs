using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LinkedIn_Project.DAL;
using System.Web.Security;

namespace LinkedIn_Project.BLL
{
    public static class UserDetaiManager
    {
        public static IEnumerable<UserDetail> GetAll()
        {
            MyDBContext ctx = new MyDBContext();
            return ctx.UserDetails.Where(u => u.IsDeleted == false);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static UserDetail GetByID(Guid id)
        {
            MyDBContext context = new MyDBContext();
            return context.UserDetails.Where(e => e.Fk_UserId == id).First();
        }


        /// <summary>
        /// UserdetailManager create the user on register of new user , 
        /// </summary>
        /// <param name="usr">FK_userId is require & FirstName is required</param>>
        /// <returns> created user detail </returns>
        public static UserDetail Add(UserDetail usr)
        {
            UserDetail result = null;
            if (usr.Fk_UserId != null && usr.FirstName != null)
            {
                MyDBContext dbcontxt = new MyDBContext();
                result = dbcontxt.UserDetails.Add(usr);
                dbcontxt.SaveChanges();
            }
            return result;
        }

        public static bool Update(UserDetail usr)
        {
            bool result = false;
            MyDBContext dbCOntxt = new MyDBContext();
            dbCOntxt.Entry(usr).State = System.Data.Entity.EntityState.Modified;

            if (dbCOntxt.SaveChanges()>0) 
            {
                result = true;
            }
            return result;
        }
        public static bool Delete(UserDetail usr) 
        {
            bool result = false;
            MyDBContext dbctxt = new MyDBContext();
            dbctxt.Entry(usr).State = System.Data.Entity.EntityState.Deleted;
           
            if (dbctxt.SaveChanges()>0)
            {
                result = true;
            }
            return result;
        }


    }
}