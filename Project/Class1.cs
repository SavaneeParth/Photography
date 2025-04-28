using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project
{
    public class Class1
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public void startcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        public void Register(string nm, string em, string gen, string ph, string psw, string cpsw)
        {
            startcon();
            cmd = new SqlCommand("insert into Register_tbl (Name,Email,Gender,Phone,Password,CfmPassword) values ('"+nm+"','"+em+"','"+gen+"','"+ph+"','"+psw+"','"+cpsw+"')", con);
            cmd.ExecuteNonQuery();
        }

        public void Contact(string nm, string em, string ms)
        {
            startcon();
            cmd = new SqlCommand("insert into Contact_tbl (Name,Email,Message) values ('"+nm+"','"+em+"','"+ms+"')", con);
            cmd.ExecuteNonQuery();
        }

        public int login(string email , string password) {
            startcon();
            cmd = new SqlCommand( "SELECT COUNT(*) FROM Register_tbl WHERE Email='" + email + "' AND Password='" + password + "'",con);
            int userCount = (int)cmd.ExecuteScalar(); // Returns the count
            return userCount;
        }

        public void adminregister(string nm, string em, string pass)
        {
            startcon();
            cmd = new SqlCommand("insert into AdminRegister (Name,Email,Password) values ('"+nm+"','"+em+"','"+pass+"')", con);
            cmd.ExecuteNonQuery();
        }
        public int adminlogin(string name, string password)
        {
            startcon();
            cmd = new SqlCommand("SELECT COUNT(*) FROM AdminRegister WHERE Name='" + name + "' AND Password='" + password + "'", con);
            int userCount = (int)cmd.ExecuteScalar(); // Returns the count
            return userCount;
        }

        public void appointment(string nm, string em, string cn, string ap, string dt, string tm)
        {
            startcon();
            cmd = new SqlCommand("insert into Appointment (Name,Email,ContactNumber,Appointment,Date,Time) values ('"+nm+"','"+em+"','"+cn+"','"+ap+"','"+dt+"','"+tm+"')", con);
            cmd.ExecuteNonQuery();
        }

        public void addpackage(string nm, string img, string ph, string rp, string mp, string sl, string pr)
        {
            startcon();
            cmd = new SqlCommand("insert into Add_Package (Name,Image,Photos,Retouchphoto,Makeup,Stylist,Price) values ('"+nm+"','"+img+"','"+ph+"','"+rp+"','"+mp+"','"+sl+"','"+pr+"')", con);
            cmd.ExecuteNonQuery();
        }

        public void addpackageupdate(int id, string nm, string ph, string rp, string mp, string sl, string pr)
        {
            startcon();
            cmd = new SqlCommand("update Add_Package set Name='" + nm + "',Photos='"+ph+"',Retouchphoto='"+rp+"',Makeup='"+mp+"',Stylist='"+sl+"',Price='"+pr+ "' where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        public void Inqury(string nm, string em, string cn, string iq, string md, string ve)
        {
            startcon();
            cmd = new SqlCommand("insert into Inquiry (Name,Email,ContactNumber,Package,MarriageDate,Venue) values ('"+nm+"','"+em+"','"+cn+"','"+iq+"','"+md+"','"+ve+"')", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet select(int id)
        {
            da = new SqlDataAdapter("select * from Add_Package where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from Add_Package", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet adminlist()
        {
            da = new SqlDataAdapter("select * from AdminRegister", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet inquries()
        {
            da = new SqlDataAdapter("select * from Inquiry", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet appointment()
        {
            da = new SqlDataAdapter("select * from Appointment", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet userlist()
        {
            da = new SqlDataAdapter("select * from Register_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}