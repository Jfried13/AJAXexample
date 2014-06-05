using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    Donors d = new Donors();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable table = d.GetDonors();
            ddlDonors.DataSource = table;
            ddlDonors.DataTextField = "PersonLastName";
            ddlDonors.DataValueField = "PersonKey";
            ddlDonors.DataBind();
        }
    }

    protected void btnDonate_Click(object sender, EventArgs e)
    {
        int personKey = int.Parse(ddlDonors.SelectedValue.ToString());
        decimal amount = decimal.Parse(txtDonation.Text);
        d.MakeDonation(personKey, amount);

        txtDonation.Text = "";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DataTable table = d.GetDonationTotals();
        GridView1.DataSource = table;
        GridView1.DataBind();

    }
}