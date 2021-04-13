using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class AddLesson : System.Web.UI.Page
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
                    Lesson lesson = new Lesson();
                    //parent
                    lesson.Name = TextBox1.Text;
                    lesson.Date = Convert.ToDateTime(TextBox2.Text);
                    lesson.Difficulty = TextBox3.Text;
                    lesson.Description = TextBox4.Text;
                    lesson.ID_employee = Convert.ToInt16(TextBox5.Text);
                    lesson.Duration = Convert.ToDouble(TextBox6.Text);
                    lesson.IndividualLesson = (Convert.ToInt16(TextBox7.Text) > 0)? true: false;
                    lesson.ID_Room = Convert.ToInt16(TextBox8.Text);
                    lesson.ID_LessonType = Convert.ToInt16(TextBox9.Text);
                    db.Lesson.InsertOnSubmit(lesson);
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
    }
}