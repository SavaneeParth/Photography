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
    public partial class AdminRegister : System.Web.UI.Page
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

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            getcon();
            cs.adminregister(AdminNameTextBox.Text, AdminEmailTextBox.Text, AdminPassTextBox.Text);
        }
    }
}