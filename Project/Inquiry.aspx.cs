using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project
{
    public partial class Inquiry : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            getcon();
            cs.Inqury(txtName.Text, txtEmail.Text, txtcontact.Text, ddlpackage.SelectedValue, txtdate.Text, txtvanue.Text);
            Response.Redirect("Pricing.aspx");
        }
    }
}