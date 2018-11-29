using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class admindelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {             
            Label1.Text = Session["value"].ToString();
            Label1.Visible = false;
        }
        catch
        {
            Response.Redirect("http://localhost:61655/Admin_Reg_login/adminlogin.aspx");
        }
    }

    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        string messages = "Do you want to delete this record?";
        string title = "Delete Record";
        MessageBoxButtons buttons = MessageBoxButtons.YesNo;
        DialogResult results = MessageBox.Show(messages, title, buttons);
        if (results == DialogResult.Yes)           
        {
            int usnId = 0;
            using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand(@"Delete dbo.student where @usn=usn", con))
                {
                    cmd.Parameters.AddWithValue("@usn", usn.Text);
                    cmd.Connection = con;
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    result = (result == DBNull.Value) ? null : result;
                    usnId = Convert.ToInt32(result);
                    con.Close();

                }
            }
            string message = string.Empty;
            Boolean flag = false;
            switch (usnId)
            {
                case 0:
                    message = "Student Record with this USN doesn't exist.\\nPlease try again.";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                    break;
                default:
                    flag = true;
                    break;
            }

            if (flag == true)
            {
                Label2.Text = "Records Deleted";
                Label2.ForeColor = System.Drawing.Color.DarkRed;
                usn.Text = "";
            }
        }
    }
}