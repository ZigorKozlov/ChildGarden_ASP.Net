using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_5_ASOIU
{
    public partial class InfoAboutEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            foreach (GridViewRow row in GridView1.Rows)
            {
                try
                {
                    int employeeId = int.Parse(row.Cells[3].Text);
                    var employee = (from item in db.Employees
                                    where item.ID_employee == employeeId
                                    select item).Single();
                    row.Cells[4].Text = employee.Name;
                    row.Cells[3].Text = employee.Surname;
                }
                catch
                {

                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}