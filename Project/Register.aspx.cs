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
    public partial class Register : System.Web.UI.Page
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            getcon();
            cs.Register(txtName.Text, txtEmail.Text, ddlGender.SelectedValue, txtPhone.Text, txtPassword.Text, txtConfirmPassword.Text);
            Response.Redirect("Login.aspx");
        }
    }
}