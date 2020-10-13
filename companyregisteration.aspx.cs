using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class companyregisteration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void submitc_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newid = Guid.NewGuid();
            conn.Open();
            string checkuser = "select count(*) from Employerregisteration where Username='" + UNc.Text + "'";
            SqlCommand comm = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("<script>alert('Username not available');</script>");
            }
            else
            {
                string insertq = "insert into Employerregisteration (id,UserName,CompanyName,ManagerName,Password,State,BranchID,Address,Contact_no,CompanyEmail) values (@id,@Uname ,@cname,@mname,@password ,@state,@Bid ,@address ,@contact,@cemail)";
                SqlCommand com = new SqlCommand(insertq, conn);
                com.Parameters.AddWithValue("@id", newid.ToString());
                com.Parameters.AddWithValue("@Uname", UNc.Text);
                com.Parameters.AddWithValue("@cname", cname.Text);
                com.Parameters.AddWithValue("@mname", manager.Text);
                com.Parameters.AddWithValue("@password", passc.Text);
                com.Parameters.AddWithValue("@state", cityc.Text);
                com.Parameters.AddWithValue("@Bid", Branchid.Text);
                com.Parameters.AddWithValue("@address", addressc.Text);
                com.Parameters.AddWithValue("@contact", contactc.Text);
                com.Parameters.AddWithValue("@cemail", emailc.Text);
                com.ExecuteNonQuery();
                Response.Write("Registeration successful");
                Response.Redirect("Employerlogin.aspx");
                conn.Close();
            }

           
        }
        catch (Exception ex)
        {

            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void backc_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employerlogin.aspx");
    }
}