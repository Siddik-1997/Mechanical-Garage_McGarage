using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McGarage
{
    public partial class Car : System.Web.UI.Page
    {
        OperationGenerate op = new OperationGenerate();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }


        public void loadgrid()
        {
            string query =
                    @"select  Owner.OwnerID,Car.License,Car.Model,Car.Color,Car.Problem
                                from Owner,Car
                                Where   Owner.OwnerID=Car.OwnerID;";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from Car
                            where License =('" + lblID.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string query = @"insert into Car
                           values('" + txtLicense.Text + "','" + txtCarModel.Text + "','" + txtCarColor.Text + "','" + txtProblem.Text + "','" + txtOwnerID.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string query = @"select *
                            from Car
                               where License=('" + txtSearch.Text + "')";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }
    }
}