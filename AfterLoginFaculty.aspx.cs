using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AfterLoginStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // ListBox1.SelectedIndex = 0;
        if (Session["username"] != null)
        {
            Label3.Text = Session["username"].ToString();
        }

    }
}