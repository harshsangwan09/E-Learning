using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          
           
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = null;
        //string str1 = "data source=localhost;Database=softzone;User Id=sagar;Password=Admin12#";
        string str1 = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        con = new SqlConnection(str1);
        con.Open();
        SqlCommand command = null;
        command = new SqlCommand("select * from faculty where username=@username and password=@password", con);
        command.Parameters.AddWithValue("username", TextBox1.Text);
        command.Parameters.AddWithValue("password", TextBox2.Text);
        SqlDataReader dr = null;
        dr = command.ExecuteReader();
        while (dr.Read())
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("AfterLoginFaculty.aspx");
        }
        Label1.Text = "SORRY WRONG USERNAME OR PASSWORD";

        Response.Write("<script language=javascript>alert('SORRY WRONG USERNAME OR PASSWORD')</script>");
    }
}