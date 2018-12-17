using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpage : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
              Label3.Text = Session["value"].ToString();
              Label3.ForeColor = System.Drawing.Color.ForestGreen;
              Label2.Text = Session["value"].ToString();
              Label2.Visible = false;            
        }
        catch
        {
           Response.Redirect("http://localhost:61655/Admin_Reg_login/adminlogin.aspx");
        }       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int usnId = 0;
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd = new SqlCommand("student_insert"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@usn", usn.Text);
                    cmd.Parameters.AddWithValue("@student_name", studname.Text);
                    cmd.Parameters.AddWithValue("@phone_num", phonenum.Text);
                    cmd.Parameters.AddWithValue("@gender", gender.Text);
                    cmd.Parameters.AddWithValue("@address", address.Text);
                    cmd.Parameters.AddWithValue("@department_name", department.Text);
                    cmd.Parameters.AddWithValue("@section_id", sectionid.Text);
                    cmd.Parameters.AddWithValue("@semester", sem.Text);
                    cmd.Parameters.AddWithValue("@section", sec.Text);

                    cmd.Parameters.AddWithValue("@subject_code1", subcode1.Text);                    
                    cmd.Parameters.AddWithValue("@marks11", marks11.Text);
                    cmd.Parameters.AddWithValue("@marks12", marks12.Text);
                    cmd.Parameters.AddWithValue("@marks13", marks13.Text);
                    cmd.Parameters.AddWithValue("@percentage1", attendance1.Text);
                    

                    cmd.Parameters.AddWithValue("@subject_code2", subcode2.Text);
                    cmd.Parameters.AddWithValue("@marks21", marks21.Text);
                    cmd.Parameters.AddWithValue("@marks22", marks22.Text);
                    cmd.Parameters.AddWithValue("@marks23", marks23.Text);
                    cmd.Parameters.AddWithValue("@percentage2", attendance2.Text);
                   
                    cmd.Parameters.AddWithValue("@subject_code3", subcode3.Text);
                    cmd.Parameters.AddWithValue("@marks31", marks31.Text);
                    cmd.Parameters.AddWithValue("@marks32", marks32.Text);
                    cmd.Parameters.AddWithValue("@marks33", marks33.Text);
                    cmd.Parameters.AddWithValue("@percentage3", attendance3.Text);
                    

                    cmd.Parameters.AddWithValue("@subject_code4", subcode4.Text);
                    cmd.Parameters.AddWithValue("@marks41", marks41.Text);
                    cmd.Parameters.AddWithValue("@marks42", marks42.Text);
                    cmd.Parameters.AddWithValue("@marks43", marks43.Text);
                    cmd.Parameters.AddWithValue("@percentage4", attendance4.Text);
                   

                    cmd.Parameters.AddWithValue("@subject_code5", subcode5.Text);
                    cmd.Parameters.AddWithValue("@marks51", marks51.Text);
                    cmd.Parameters.AddWithValue("@marks52", marks52.Text);
                    cmd.Parameters.AddWithValue("@marks53", marks53.Text);
                    cmd.Parameters.AddWithValue("@percentage5", attendance5.Text);
                   

                    cmd.Parameters.AddWithValue("@subject_code6", subcode6.Text);
                    cmd.Parameters.AddWithValue("@marks61", marks61.Text);
                    cmd.Parameters.AddWithValue("@marks62", marks62.Text);
                    cmd.Parameters.AddWithValue("@marks63", marks63.Text);
                    cmd.Parameters.AddWithValue("@percentage6", attendance6.Text);
                    

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
                    message = "Student Record with this USN already exists.\\nPlease choose a different usn.";
                    break;
                default:
                    flag = true;
                    break;
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            if (flag == true)
            {
                Response.Redirect("http://localhost:61655/Admin/adminpage.aspx");
            }
        }
    }
}