using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McGarage
{
    public partial class Mechanic : System.Web.UI.Page
    {
        OperationGenerate op = new OperationGenerate();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }


        public void loadgrid()
        {
            string query =
                      @"select  Car.License,Car.Problem,Mechanic.MechanicID,Mechanic.MechanicName,Mechanic.MechanicPhone
                                from Mechanic,Car
                                Where   Car.License=Mechanic.License;";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from Mechanic
                            where MechanicID =('" + lblID.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

            string query = @"insert into Mechanic
                           values('" + txtMechanicID.Text + "','" + txtMechanicName.Text + "','" + txtMechanicPhone.Text + "','" + txtLicense.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string query = @"select *
                            from Mechanic,Car
                           Where Mechanic.License=Car.License and
                            MechanicID=('" + txtSearch.Text + "')";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }
    }
}