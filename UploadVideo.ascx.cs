using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;

public partial class UploadVideo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    byte[] buffer;//this is the array of bytes which will hold the data (file)
    SqlConnection connection;
    protected void ButtonUpload_Click(object sender, EventArgs e)
    {
        //check the file
        if (FileUpload1.HasFile && FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            HttpPostedFile file = FileUpload1.PostedFile;//retrieve the HttpPostedFile object
            buffer = new byte[file.ContentLength];
            int bytesReaded = file.InputStream.Read(buffer, 0, FileUpload1.PostedFile.ContentLength);
            //the HttpPostedFile has InputStream porperty (using System.IO;)
            //which can read the stream to the buffer object,
            //the first parameter is the array of bytes to store in,
            //the second parameter is the zero index (of specific byte) where to start storing in the buffer,
            //the third parameter is the number of bytes you want to read (do u care about this?)
            if (bytesReaded > 0)
            {
                try
                {
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
                connection = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand
                    ("INSERT INTO Videos (Video, Video_Name, Video_Size,keywords,status) VALUES (@video, @videoName, @videoSize,@keywords,@status)", connection);
                cmd.Parameters.Add("@video", SqlDbType.VarBinary, buffer.Length).Value = buffer;
                cmd.Parameters.Add("@videoName", SqlDbType.NVarChar).Value = FileUpload1.FileName;
                cmd.Parameters.Add("@videoSize", SqlDbType.BigInt).Value = file.ContentLength;
                cmd.Parameters.Add("@keywords", SqlDbType.VarChar).Value = TextBox1.Text;
                cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = "Not OK";
                using (connection)
                {
                    connection.Open();
                    int i = cmd.ExecuteNonQuery();
                    Label1.Text = "uploaded, " + i.ToString() + " rows affected";
                    TextBox1.Text = "";
                }
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message.ToString();
                }
            }
            
        }
        else
        {
            Label1.Text = "Choose a valid video file";
        }
    }
}
