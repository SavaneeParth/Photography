using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            cs = new Class1();
            cs.startcon();
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            int count = cs.adminlogin(AdminNameTextBox.Text, AdminPassTextBox.Text);

            if (count > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}