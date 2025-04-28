using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        DataTable dt;
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString();
        public void connection()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            displayUser();
            displayAppointment();
            displayPackage();
        }
        void displayUser()
        {
            connection();
            da = new SqlDataAdapter("Select Count(*) from Register_tbl", con);
            dt = new DataTable();
            da.Fill(dt);

            lbl_user.Text = dt.Rows[0][0].ToString();
        }
        void displayAppointment()
        {
            connection();
            da = new SqlDataAdapter("Select Count(*) from Appointment", con);
            dt = new DataTable();
            da.Fill(dt);

            lbl_appointment.Text = dt.Rows[0][0].ToString();
        }
        void displayPackage()
        {
            connection();
            da = new SqlDataAdapter("Select Count(*) from Add_Package", con);
            dt = new DataTable();
            da.Fill(dt);

            lbl_package.Text = dt.Rows[0][0].ToString();
        }
    }
}