using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinkedIn_Project
{
    public partial class PostWriting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int maxlen = 150;
                postheadline.Attributes.Add("MaxLength", maxlen.ToString());
            }

        }
    }
}