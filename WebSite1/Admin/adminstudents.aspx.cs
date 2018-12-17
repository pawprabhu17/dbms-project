using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminstudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {            
            Label2.Text = Session["value"].ToString();
            Label2.Visible = false;
        }
        catch
        {
            Response.Redirect("http://localhost:61655/Admin_Reg_login/adminlogin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int usnId = 0;
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd = new SqlCommand("subject_insert"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@subject_code", TxtName1.Text);
                    cmd.Parameters.AddWithValue("@subject_name", TxtName2.Text);
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
                case -1:
                    message = "Record of this Subject already exists.\\nPlease choose a different usn.";
                    break;
                default:
                    flag = true;
                    break;
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            if (flag == true)
            {
                Response.Redirect("http://localhost:61655/Admin/adminstudents.aspx");
            }
        }
}