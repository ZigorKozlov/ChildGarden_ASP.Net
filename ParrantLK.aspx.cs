using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class ParrantLK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)//Edit LK
        {
            Response.Redirect("EditProfileParent.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateReview.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateApplication.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)//info about child
        {
            Response.Redirect("InfoAboutChild.aspx");
            
        }
    }
}