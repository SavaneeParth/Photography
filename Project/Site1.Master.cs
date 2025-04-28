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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}