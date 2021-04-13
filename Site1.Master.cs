using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
namespace LAB_5_ASOIU
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rights = Convert.ToString(Session["rights"]);
            long iduser = Convert.ToInt64(Session["IDP"]);
            string myuser = Convert.ToString(Session["userName"]);
            if (iduser != 0)
            { //user is sign in
                Label_hello.Visible = true;
                Button3.Visible = true;
                Label_hello.Text = "Привет, " + myuser + "! Ваши права - " + rights + ".";

                RadioButtonList1.Visible = false;

                TextBox_login.Visible = false;
                TextBox_password.Visible = false;
                Label_password.Visible = false;
                Label_login.Visible = false;
                Label_error.Visible = false;
                LinkButton3.Visible = true;
                Button1.Visible = false;
                Button2.Visible = false;
            } else
            {
                LinkButton3.Visible = false;
                Label_login.Visible = true;
                Label_password.Visible = true;

                TextBox_login.Visible = true;
                TextBox_password.Visible = true;

                Button3.Visible = false;
                Button2.Visible = true;
                Button1.Visible = true;
                RadioButtonList1.Visible = true;


                Label_hello.Visible = false;
                Label_error.Visible = false;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)//info about employees
        {
            Response.Redirect("InfoAboutEmployees.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)//LK
        {
            string rights = Convert.ToString(Session["rights"]);
            if (rights == "Родитель") {
                Response.Redirect("ParrantLK.aspx");
            } else if (rights == "Сотрудник")
            {
                Response.Redirect("EmployeeLK.aspx");
            }
            else if (rights == "Администратор")
            {
                Response.Redirect("AdminLK.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)//Новости
        {
            Response.Redirect("News.aspx");// redirect to news page
        }

        protected void LinkButton4_Click(object sender, EventArgs e)//Main page
        {
            Response.Redirect("Index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)//Sign in button
        {
            string rights;// for check 
            string myuser;
            long iduser;
            string login, password;
            login = Convert.ToString(TextBox_login.Text);
            password = Convert.ToString(TextBox_password.Text);
            //Data base contesxt(reverence to DB)
            DataClasses1DataContext db = new DataClasses1DataContext();
            Label_hello.Text = "";

            try
            {
                if (RadioButtonList1.SelectedValue == "Родитель")
                {
                    var SelectedParent = (from item in db.Parents
                                          where item.Login == login && item.Password == password
                                          select item).Single();
                    myuser = SelectedParent.Name;
                    iduser = SelectedParent.ID_parent;
                    rights = "Родитель";

                }
                else if (RadioButtonList1.SelectedValue == "Сотрудник")
                {
                    var SelectedEmployee = (from item in db.Employees
                                            where item.Login == login && item.Password == password
                                            select item).Single();
                    myuser = SelectedEmployee.Name;
                    iduser = SelectedEmployee.ID_employee;
                    rights = "Сотрудник";

                }
                else if (RadioButtonList1.SelectedValue == "Администратор")
                {
                    var SelectedEmployee = (from item in db.Employees
                                            where item.Login == login && item.Password == password
                                            select item).Single();
                    if (SelectedEmployee.Position != "Заведующий")
                    {
                        Label_error.Text = "У вас нет прав на вход, как Администратор!";
                        return;
                    }
                    myuser = SelectedEmployee.Name;
                    iduser = SelectedEmployee.ID_employee;
                    rights = "Администратор";

                }
                else
                {
                    Label_error.Visible = true;
                    Label_error.Text = "Ошибка выбора роли!!!";
                    return;
                }

                Session["userName"] = myuser;
                Session["IDP"] = iduser;
                Session["rights"] = rights;

                Label_hello.Visible = true;
                Button3.Visible = true;
                Label_hello.Text = "Привет, " + myuser + "! Ваши права - " + rights + ".";
                LinkButton3.Visible = true;
                TextBox_login.Visible = false;
                TextBox_password.Visible = false;
                Label_password.Visible = false;
                Label_login.Visible = false;
                Label_error.Visible = false;
                RadioButtonList1.Visible = false;

                Button1.Visible = false;
                Button2.Visible = false;

            } catch(Exception ex)
            {
                Label_error.Visible = true;
                Label_error.Text = ex.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)//Exit button
        {
            Session.Clear();
            Label_login.Visible = true;
            Label_password.Visible = true;

            TextBox_login.Visible = true;
            TextBox_password.Visible = true;
            LinkButton3.Visible = false;
            Button3.Visible = false;
            Button2.Visible = true;
            Button1.Visible = true;
            RadioButtonList1.Visible = true;

            Label_hello.Visible = false;
            Label_error.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)//Регистрация
        {
            Response.Redirect("Registration.aspx");
        }
    }
}