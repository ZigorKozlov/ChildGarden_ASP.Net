using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class AddProgress : System.Web.UI.Page
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
                    var child = (from item in db.Children
                                 where item.Surname == Convert.ToString(TextBox1.Text) && item.Name == Convert.ToString(TextBox2.Text) &&
                                 item.Patronymic == Convert.ToString(TextBox3.Text)
                                 select item).Single();

                    Progress progress = new Progress();

                    progress.ID_child = Convert.ToInt16(child.ID_child);
                    progress.ID_lesson = Convert.ToInt16(TextBox4.Text);
                    progress.Grade = Convert.ToInt16(TextBox5.Text);
                    progress.Behavior = Convert.ToString(TextBox6.Text);
                    db.Progress.InsertOnSubmit(progress);
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Прогресс записан успешно!";

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