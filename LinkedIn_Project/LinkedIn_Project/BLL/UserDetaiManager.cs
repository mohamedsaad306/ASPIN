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

        public static UserDetail GetUserDetailByID(Guid id) 
        { 
            MyDBContext context= new MyDBContext ();
            return (UserDetail)context.UserDetails.Where(e => e.Fk_UserId == id);
        }
        public static UserDetail Add(Guid id , string name ) {
            MyDBContext dbcontxt = new MyDBContext();
            UserDetail user= dbcontxt.UserDetails.Add(new UserDetail { Fk_UserId = id,FirstName=name });
            dbcontxt.SaveChanges();
            return user;
        }

    }
}