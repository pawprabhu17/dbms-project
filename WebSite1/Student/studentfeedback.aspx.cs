using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_studentfeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = Session["usn"].ToString();
            Label1.Visible = false;
        }
        catch
        {
            Response.Redirect("http://localhost:61655/Student_Reg_login/main.aspx");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {        
        int usnId = 0;
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd = new SqlCommand("student_feedback"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@usn", usn.Text);
                    cmd.Parameters.AddWithValue("@feed1", feedback1.SelectedValue);
                    cmd.Parameters.AddWithValue("@feed2", feedback2.SelectedValue);
                    cmd.Parameters.AddWithValue("@feed3", feedback3.SelectedValue);
                    cmd.Parameters.AddWithValue("@feed4", feedback4.SelectedValue);
                    cmd.Parameters.AddWithValue("@feed5", feedback5.SelectedValue);
                    cmd.Parameters.AddWithValue("@feed6", feedback6.SelectedValue);
                    cmd.Connection = con;
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    result = (result == DBNull.Value) ? null : result;
                    usnId = Convert.ToInt32(result);
                    con.Close();
                }
            }
        }
        string message = string.Empty;
        Boolean flag = false;
        switch (usnId)
        {
            case -1:
                message = "Feedback of this USN already recorded.";
                break;
            default:
                flag = true;
                break;
        }
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        if (flag == true)
        {
            Response.Redirect("http://localhost:61655/Student/studentview.aspx");
        }
    }
    protected void feedback1_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        this.feedback1.Enabled = false;
    }
    protected void feedback2_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        this.feedback2.Enabled = false;
    }
    protected void feedback3_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        this.feedback3.Enabled = false;
    }
    protected void feedback4_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        this.feedback4.Enabled = false;
    }
    protected void feedback5_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        this.feedback5.Enabled = false;
    }
    protected void feedback6_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        this.feedback6.Enabled = false;
    }
}