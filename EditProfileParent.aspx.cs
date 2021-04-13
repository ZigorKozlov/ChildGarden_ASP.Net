using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

namespace LAB_5_ASOIU
{
    public partial class EditProfileParent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                int id = Convert.ToInt16(Session["IDP"]);
                try
                {
                    var updateItem = (from item in db.Parents
                                      where item.ID_parent == id
                                      select item).Single();
                    //parent
                    updateItem.Surname = TextBox1.Text;
                    updateItem.Name = TextBox2.Text;
                    updateItem.Patronymic = TextBox3.Text;
                    updateItem.Phone = TextBox4.Text;
                    updateItem.Mail = TextBox5.Text;
                    updateItem.Login = TextBox6.Text;
                    updateItem.Password = TextBox7.Text;
                    Session["userName"] = TextBox2.Text;
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Обновлено!!!";

                }
                catch (Exception ex)
                {
                    Label2.Visible = true;
                    Label2.Text = "Ошибка" + ex.Message;
                }
            }
        }
    }
}