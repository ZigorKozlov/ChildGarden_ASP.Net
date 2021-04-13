using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class AddEmpl : System.Web.UI.Page
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
                    Employees employee = new Employees();
                    //parent
                    employee.Surname = TextBox1.Text;
                    employee.Name = TextBox2.Text;
                    employee.Patronymic = TextBox3.Text;
                    employee.Phone = TextBox4.Text;
                    employee.Mail = TextBox5.Text;
                    employee.Position = TextBox9.Text;
                    employee.Salary = Convert.ToInt16(TextBox10.Text);
                    employee.Login = TextBox6.Text;
                    employee.Password = TextBox7.Text;
                    db.Employees.InsertOnSubmit(employee);
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Регистрация успешна!";

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