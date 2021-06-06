using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class feedback : System.Web.UI.Page
{
    
    public System.Net.NetworkCredential smtpcreds = new System.Net.NetworkCredential("onlinetutorial6", "project123");
   

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = null;
        string str1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //connection = new MyMySqlConnection(str1);
        connection = new SqlConnection(str1);
        connection.Open();

        //MyMySqlCommand cmd = new MyMySqlCommand("insert into enquiry(enquiryid,name,occupation,emailaddress,mobileno,enquiry,enquirydate,status) values(@enquiryid,@name,@occupation,@emailaddress,@mobileno,@enquiry,@enquirydate,@status)", connection);
        SqlCommand cmd = new SqlCommand("insert into feedback(cname,email,feedback) values(@cname,@email,@feedback)", connection);
        cmd.Parameters.AddWithValue("cname", TextBox1.Text);
        cmd.Parameters.AddWithValue("email", TextBox2.Text);
        cmd.Parameters.AddWithValue("feedback", TextBox3.Text);
       

        cmd.ExecuteNonQuery();
        connection.Close();

        string message = "Your Detail Has Been Submitted Successfully and We Will Contact You Soon.";
        Label5.Text = message;
        Button1.Enabled = false;
        Button2.Enabled = false;
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        //TextBox4.Text = " ";
        }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        txtmail.Text = "";
    }
}
