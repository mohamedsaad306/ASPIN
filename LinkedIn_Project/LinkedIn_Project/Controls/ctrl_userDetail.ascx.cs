using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LinkedIn_Project.BLL;
using LinkedIn_Project.DAL;
namespace LinkedIn_Project.Controls
{
    public partial class ctrl_userDetail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_getUser_Click(object sender, EventArgs e)
        {
            var usr = UserDetaiManager.GetByID(new Guid(txtbox_userDetailId.Text));
            txtbox_firstName.Text = usr.FirstName;
            txtbox_lastName.Text = usr.LastName;
            txtbox_summary.Text = usr.Summary;
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            UserDetail usrDetail = new UserDetail();
            usrDetail.Fk_UserId = new Guid(txtbox_userDetailId.Text);
            usrDetail.FirstName = txtbox_firstName.Text;
            usrDetail.LastName = txtbox_lastName.Text;
            usrDetail.Summary = txtbox_summary.Text;
            UserDetaiManager.Update(usrDetail);

        }

   
    }
}