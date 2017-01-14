using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LinkedIn_Project.DAL;

namespace LinkedIn_Project.BLL
{
    public static class UserDetaiManager
    {
        public static List<UserDetail> GetAllUsersDetails()
        {
            MyDBContext ctx = new MyDBContext();
            return ctx.UserDetails.Where(u => u.IsDeleted==false).ToList();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static UserDetail GetUserDetailByID(Guid id) 
        { 
            MyDBContext context= new MyDBContext ();
            return (UserDetail)context.UserDetails.Where(e => e.Fk_UserId == id);
        }
        /// <summary>
        /// UserdetailManager create the user on register of new user , 
        /// </summary>
        /// <param name="usr">FK_userId is require & FirstName is required</param>>
        /// <returns> created user detail </returns>
        public static UserDetail Add(UserDetail usr  ) {

            UserDetail result =null; 
            if (usr.Fk_UserId!=null&& usr.FirstName!=null)
            {
            MyDBContext dbcontxt = new MyDBContext();
            result = dbcontxt.UserDetails.Add(usr);
            dbcontxt.SaveChanges();
            }
            return result;
        }

    }
}