using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

namespace LAB_5_ASOIU
{
    public partial class Registration : System.Web.UI.Page
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
                    Parents parent = new Parents();
                    //parent
                    parent.Surname = TextBox1.Text;
                    parent.Name = TextBox2.Text;
                    parent.Patronymic = TextBox3.Text;
                    parent.Phone = TextBox4.Text;
                    parent.Mail = TextBox5.Text;
                    parent.Login = TextBox6.Text;
                    parent.Password = TextBox7.Text;
                    db.Parents.InsertOnSubmit(parent);
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Регистрация успешна!";

                } catch
                {
                    Label2.Visible = true;
                    Label2.Text = "Ошибка";
                }
            }
        }
    }
}