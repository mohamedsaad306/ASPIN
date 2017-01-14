using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LinkedIn_Project.BLL;
using System.Web.Security;
using LinkedIn_Project.DAL;

namespace LinkedIn_Project.Controls
{
    public partial class ctrl_register : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

            Guid id =(Guid) Membership.GetUser((sender  as CreateUserWizard).UserName).ProviderUserKey ;

            UserDetail usr = new UserDetail { Fk_UserId = id, FirstName = (sender as CreateUserWizard).UserName }; 
            UserDetaiManager.Add(usr);   
        }
    }
}