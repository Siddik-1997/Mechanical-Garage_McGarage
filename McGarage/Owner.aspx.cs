using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McGarage
{
    public partial class Owner : System.Web.UI.Page
    {
        OperationGenerate op = new OperationGenerate();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }


        public void loadgrid()
        {
            string query =
                     @"select  [OwnerID]
                              ,[OwnerName]
                              ,[Gender]
                              ,[Phone]
                              ,[Address]
                          FROM [dbo].[Owner];";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label lblID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from Owner
                            where OwnerID =('" + lblID.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string query = @"insert into Owner
                           values('" + txtOwnerID.Text + "','" + txtOwnerName.Text + "','" + DropGender.Text + "','" + txtPhone.Text + "','" + txtAddress.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

            string query = @"select *
                            from Owner
                               where OwnerID=('" + txtSearch.Text + "')";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();

        }
    }
}