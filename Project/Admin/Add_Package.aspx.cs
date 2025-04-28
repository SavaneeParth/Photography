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
    public partial class Add_Package : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        Class1 cs;
        string fnm;
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
            GridView1.DataSource = cs.filldata();
            GridView1.DataBind();
        }

        void imgupload()
        {
            if (img.HasFile)
            {
                fnm = "../Admin/images/" + img.FileName;
                img.SaveAs(Server.MapPath(fnm));
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(btnSubmit.Text == "AddPackage")
            {
                getcon();
                imgupload();
                cs.addpackage(txtPackageName.Text,fnm,txtMaxPhotos.Text, ddlRetouched.SelectedValue, ddlMakeup.SelectedValue, ddlStylist.SelectedValue, txtPrice.Text);
                fillgrid();
            }
            else
            {
                cs = new Class1();
                getcon();
                cs.addpackageupdate(Convert.ToInt16(ViewState["id"]), txtPackageName.Text, txtMaxPhotos.Text, ddlRetouched.SelectedValue, ddlMakeup.SelectedValue, ddlStylist.SelectedValue, txtPrice.Text);
                fillgrid();
            }
         
        }

        void filltext()
        {
            cs = new Class1();
            getcon();
            ds = new DataSet();
            ds = cs.select(Convert.ToInt16(ViewState["id"]));
            txtPackageName.Text = ds.Tables[0].Rows[0][1].ToString();
            txtMaxPhotos.Text = ds.Tables[0].Rows[0][3].ToString();
            ddlRetouched.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
            ddlMakeup.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
            ddlStylist.SelectedValue = ds.Tables[0].Rows[0][6].ToString();
            txtPrice.Text = ds.Tables[0].Rows[0][7].ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                btnSubmit.Text = "Update";
                filltext();//paring
            }
        }
    }
}