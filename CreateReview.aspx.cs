using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class CreateReview : System.Web.UI.Page
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
                    var employee = (from item in db.Employees
                                    where item.Surname == Convert.ToString(TextBox1.Text) && item.Name == Convert.ToString(TextBox2.Text) && 
                                    item.Patronymic == Convert.ToString(TextBox3.Text)
                                    select item).Single();

                    Reviews review = new Reviews();

                    review.Description = Convert.ToString(TextBox4.Text);
                    review.ID_parent = Convert.ToInt16(Session["IDP"]);
                    review.ID_employee = Convert.ToInt16(employee.ID_employee);
                    db.Reviews.InsertOnSubmit(review);
                    db.SubmitChanges();
                    Label2.Visible = true;
                    Label2.Text = "Отзыв отправлен успешна!";

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