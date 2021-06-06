using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMINMASTER : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     /*   if (Session["username"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            Label1.Text = Session["username"].ToString();

        }*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Default.aspx");

    }
}
