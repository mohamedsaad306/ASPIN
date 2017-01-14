using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LinkedIn_Project.BLL;

namespace LinkedIn_Project.Controls
{
    public partial class ctrl_usersList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv_users.DataSource = UserDetaiManager.GetAllUsersDetails();
                gv_users.DataBind();


            }
        }
    }
}