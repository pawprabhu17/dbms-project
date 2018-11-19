using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (username.Text == "" && password.Text == "")
        {
            Label2.Text = "Please Enter Required Details";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else if (password.Text == "")
        {
            Label2.Text = "Please Enter Password ";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else if (username.Text == "")
        {
            Label2.Text = "Please Enter Username";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Boolean flag = false;
            SqlCommand com = new SqlCommand("adminlogin", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@username", username.Text);
            com.Parameters.AddWithValue("@password", password.Text);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                flag = true;
            }
            else
            {
                username.Text = "";
                Label2.Text = "Invalid username or password.";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            if(flag)
            {
                Session["value"] = username.Text;               
                Response.Redirect("http://localhost:61655/Admin/adminpage.aspx");
            }
        }
    }
}
   