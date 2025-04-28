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
    public partial class Userlist : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }
        void getcon()
        {
            cs = new Class1();
            cs.startcon();
        }
        void fillgrid()
        {
            cs = new Class1();
            getcon();
            GridView1.DataSource = cs.userlist();
            GridView1.DataBind();
        }
    }
}