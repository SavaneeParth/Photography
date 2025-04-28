using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace Project
{
    public partial class Login : System.Web.UI.Page
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
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count = cs.login(txtEmail.Text, txtPassword.Text);

            if (count > 0)
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}