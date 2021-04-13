using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class AdminLK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)//заявки
        {
            Response.Redirect("AppHandle.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)//упр сотрудниками
        {
            Response.Redirect("EmpManage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)// упр детьми
        {
            Response.Redirect("ChildManage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmpl.aspx");
        }
    }
}