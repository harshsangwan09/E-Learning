using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

  
public partial class htmltest : System.Web.UI.Page
{
    public static int qno = 0;
    public static int totquestion = 0;
    public static int point = 0;
    public static int wrongans = 0;
    
    public htmltest()
        {
            InitializeCulture();
        }


               
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (Session["username"] != null)
            Label8.Text = Session["username"].ToString();
            Label9.Text = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (qno >= 10)
        {
            if (chkAnswer1.Checked && chkAnswer1.Text == rightans.Text)
            {
                totquestion = totquestion + 1;
                Label7.Text = "" + totquestion;
                point = point + 1;
                Label5.Text = "" + point;
            }
            else if (chkAnswer2.Checked && chkAnswer2.Text == rightans.Text)
            {
                totquestion = totquestion + 1;
                Label7.Text = "" + totquestion;
                point = point + 1;
                Label5.Text = "" + point;
            }
            else if (chkAnswer3.Checked && chkAnswer3.Text == rightans.Text)
            {
                totquestion = totquestion + 1;
                Label7.Text = "" + totquestion;
                point = point + 1;
                Label5.Text = "" + point;
            }
            else
            {
                wrongans = wrongans + 1;
                Label6.Text = "" + wrongans;
            }


            lblQuestion.Text = "Your Test Complete";
            chkAnswer1.Visible = false;
            chkAnswer2.Visible = false;
            chkAnswer3.Visible = false;
            Button1.Visible = false;
            Button3.Visible = true;
            qno = 0;
            totquestion = 0;
            wrongans = 0;
            point = 0;
        }

        else
        {

            qno = qno + 1;

            if (chkAnswer1.Checked && chkAnswer1.Text == rightans.Text)
            {
                totquestion = totquestion + 1;
                Label7.Text = "" + totquestion;
                point = point + 1;
                Label5.Text = "" + point;
            }
            else if (chkAnswer2.Checked && chkAnswer2.Text == rightans.Text)
            {
                totquestion = totquestion + 1;
                Label7.Text = "" + totquestion;
                point = point + 1;
                Label5.Text = "" + point;
            }
            else if (chkAnswer3.Checked && chkAnswer3.Text == rightans.Text)
            {
                totquestion = totquestion + 1;
                Label7.Text = "" + totquestion;
                point = point + 1;
                Label5.Text = "" + point;
            }
            else
            {
                wrongans = wrongans + 1;
                Label6.Text = "" + wrongans;
            }


      
            SqlConnection con = null;
            SqlDataReader dr = null;
            SqlCommand cmd = null;
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con = new SqlConnection(connectionString);
            con.Open();

            string question = null;
            string option1 = null;
            string option2 = null;
            string option3 = null;
            string rans = null;
            
            string topic = Label1.Text;
            topic = topic.Trim();
            cmd = new SqlCommand("select * from questions where topic='" + topic + "' and questionno='" + qno + "'", con);
            Label10.Text = topic;
            Label11.Text = "" + qno;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                question = (dr[3].ToString());
                question = question.Trim();
                lblQuestion.Text = question;
                rans = (dr[7].ToString());
                rans = rans.Trim();
                rightans.Text = rans;

                option1 = (dr[4].ToString());
                option1 = option1.Trim();
                chkAnswer1.Text = option1;


                option2 = (dr[5].ToString());
                option2 = option2.Trim();
                chkAnswer2.Text = option2;


                option3 = (dr[6].ToString());
                option3 = option3.Trim();
                chkAnswer3.Text = option3;


             
            }
            dr.Close();
            con.Close();
            
            ClearcheckBox();
           
        }
        
        
     
    }
    private void ClearcheckBox()
    {
        chkAnswer1.Checked = false;
        chkAnswer2.Checked = false;
        chkAnswer3.Checked = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommandBuilder cm = null;
        SqlCommand cmd1 = null;
        DataTable datatab = new DataTable();
        SqlConnection con1 = null;
        SqlDataReader dr1 = null;
        SqlDataAdapter da = null;
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        con1 = new SqlConnection(connectionString);
        con1.Open();

        SqlCommand cmd = new SqlCommand("insert into testresult (topic,username,resultdate,wronganswer,totalquestion,totalpoint) values(@topic,@username,@resultdate,@wronganswer,@totalquestion,@totalpoint)", con1);
        cmd.Parameters.AddWithValue("topic", Label1.Text);
        cmd.Parameters.AddWithValue("username", Label8.Text);
        cmd.Parameters.AddWithValue("resultdate", Label9.Text);
        cmd.Parameters.AddWithValue("Wronganswer", Label6.Text);
        cmd.Parameters.AddWithValue("totalquestion", Label11.Text);
        cmd.Parameters.AddWithValue("totalpoint", Label5.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("default.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        lblQuestion.Visible = true;
        chkAnswer1.Visible = true;
        chkAnswer2.Visible = true;
        chkAnswer3.Visible = true;
        Button4.Visible = false;
        qno = 0;
        totquestion = 0;
        wrongans = 0;
        point = 0;



        qno = qno + 1;

            SqlConnection con = null;
            SqlDataReader dr = null;
            SqlCommand cmd = null;
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con = new SqlConnection(connectionString);
            con.Open();

            string question = null;
            string option1 = null;
            string option2 = null;
            string option3 = null;
            string rans = null;
            string topic = Label1.Text;
            topic = topic.Trim();
            cmd = new SqlCommand("select * from questions where topic='" + topic + "' and questionno='1'", con);
            Label10.Text = topic;
            Label11.Text = "" + qno;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                question = (dr[3].ToString());
                question = question.Trim();
                lblQuestion.Text = question;
                rans = (dr[7].ToString());
                rans = rans.Trim();
                rightans.Text = rans;

                option1 = (dr[4].ToString());
                option1 = option1.Trim();
                chkAnswer1.Text = option1;


                option2 = (dr[5].ToString());
                option2 = option2.Trim();
                chkAnswer2.Text = option2;


                option3 = (dr[6].ToString());
                option3 = option3.Trim();
                chkAnswer3.Text = option3;


               
            }
            dr.Close();
            con.Close();
            

  




    }
}
