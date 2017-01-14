using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LinkedIn_Project.DAL;
using System.Data.Entity;
namespace LinkedIn_Project.BLL
{
    public static class OrganizationManager
    {
       static MyDBContext db = new MyDBContext();
        public static List<Organization> GetAll()
        {
            return db.Organizations.Where(org => org.IsDeleted==false).ToList();
        }
        public static Organization GetAllById(int OrganizationId)
        {
            return db.Organizations.Find(OrganizationId);
        }
        
        public static Organization Add(Organization OrgObj)
        {
            Organization result = db.Organizations.Add(OrgObj);
            db.SaveChanges();
            return result;
        }
        public static bool Update(Organization org)
        {
            db.Entry(org).State = EntityState.Modified;
            int result= db.SaveChanges();
            bool flag = false;
            if (result>0)
            {
                flag = true;
            }
            return flag;
        }
        public static bool Delete(Organization org)
        {
            org.IsDeleted = true;
            db.Entry(org).State = EntityState.Modified;
            int result = db.SaveChanges();
            bool flag = false;
            if (result > 0)
            {
                flag = true;
            }
            return flag;
        }

    }
}