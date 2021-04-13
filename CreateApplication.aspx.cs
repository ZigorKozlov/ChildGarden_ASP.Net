using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class CreateApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DataClasses1DataContext db = new DataClasses1DataContext();

                try
                {
                    Applications app = new Applications();
                    //parent
                    app.Surname_ch = Convert.ToString(TextBox1.Text);
                    app.Name_ch = Convert.ToString(TextBox2.Text);
                    app.Patronymic_ch = Convert.ToString(TextBox3.Text);
                    app.Achievements = Convert.ToString(TextBox4.Text);
                    app.Privileges = Convert.ToString(TextBox6.Text);
                    app.Age_ch = Convert.ToInt16(TextBox7.Text);
                    app.ID_parent = Convert.ToInt16(Session["IDP"]);
                    db.Applications.InsertOnSubmit(app);
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Заявка подана успешна!";

                }
                catch
                {
                    Label2.Visible = true;
                    Label2.Text = "Ошибка";
                }
            }
        }
    }
}