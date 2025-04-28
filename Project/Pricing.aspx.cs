using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Project
{
    public partial class Pricing : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        Class1 cs;
        PagedDataSource pg;
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        int p, row;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn();
            DisplayProduct();
        }
        void conn()
        {
            con = new SqlConnection(s);
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inquiry.aspx");
        }

        void DisplayProduct()
        {
            conn();
            cs = new Class1();
            da = new SqlDataAdapter("select * from Add_Package", con);
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 2;
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.CurrentPageIndex = Convert.ToInt16(ViewState["id"]);
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }

    }
}