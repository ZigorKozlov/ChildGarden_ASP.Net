using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class AppHandle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)//принять
        {

            DataClasses1DataContext db = new DataClasses1DataContext();

            var selectedRow = GridView1.SelectedRow;
            if (selectedRow != null)
            {
                try
                {
                    Children child = new Children();
                    child.Surname = Convert.ToString(selectedRow.Cells[1].Text);
                    child.Name = Convert.ToString(selectedRow.Cells[2].Text);
                    child.Patronymic = Convert.ToString(selectedRow.Cells[3].Text);
                  
                    child.ID_group = 1;
                    child.Gender = "Муж";
                    
                    db.Children.InsertOnSubmit(child);
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Успешно!";

                }
                catch
                {
                    Label2.Visible = true;
                    Label2.Text = "Ошибка";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)//Отклонить
        {
            var selectedRow = GridView1.SelectedRow;
            if (selectedRow != null)
            {
                //шв фзз 9-кщц
                DataClasses1DataContext db = new DataClasses1DataContext();

                int id = Convert.ToInt16(selectedRow.Cells[8].Text);
                try
                {
                    var delRow = (from item in db.Applications
                                    where item.ID_app == id
                                    select item).Single();
                    db.Applications.DeleteOnSubmit(delRow);
                    db.SubmitChanges();

                    Label2.Visible = true;
                    Label2.Text = "Успешно удалено!";
                    GridView1.DataBind();

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