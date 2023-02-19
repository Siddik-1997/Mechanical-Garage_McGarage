using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McGarage
{
    public partial class Receipt : System.Web.UI.Page
    {
        OperationGenerate op = new OperationGenerate();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }


        public void loadgrid()
        {
            string query =
                    @"select  Owner.OwnerName,Owner.Phone,Car.License,Car.Model,Mechanic.MechanicName,Mechanic.MechanicPhone,Receipt1.Serial,Receipt1.ReceivedDate,Receipt1.DeliveryDate,Receipt1.Bill
                                from Owner,Car,Mechanic,Receipt1
                                  Where Car.OwnerID=Owner.OwnerID and 
                                        Car.License=Mechanic.License and
                                        Mechanic.License=Receipt1.License";
                                                                      
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string query = @"insert into Receipt1
                           values('" + txtSerial.Text + "','" + txtLicense.Text + "','" + txtReceivedDate.Text + "','" + txtDeliveryDate.Text + "','" + txtBill.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void Calendar1Button_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            Calendar1Button.Visible = false;
        }

        protected void Calendar2Button_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
            Calendar2Button.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtReceivedDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
            Calendar1Button.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtDeliveryDate.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
            Calendar2.Visible = false;
            Calendar2Button.Visible = true;
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from Receipt1
                            where Serial =('" + lblID.Text + "')";
            if (op.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

            string query = @"select *
                            from Receipt1,Car,Owner,Mechanic
                               
                            Where Car.OwnerID=Owner.OwnerID and 
                            Car.License=Mechanic.License and
                            Mechanic.License=Receipt1.License and
                            Serial =('" + txtSearch.Text + "')";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }
    }
}