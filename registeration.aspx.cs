using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class start : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
           
            
           
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newid = Guid.NewGuid();
            conn.Open();
            string checkuser = "select count(*) from RegisterationTrainee where UserName='" + UN.Text + "'";
            SqlCommand comm = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("<script>alert('Username not available');</script>");
            }
            else
            {
                string insertq = "insert into RegisterationTrainee (ID,UserName,FirstName,LastName,Date,Email,Password,Country,State,Address,Contact,License_number,Social_security_number) values (@id,@Uname ,@firstname,@lastname ,@age ,@email ,@password ,@country ,@state ,@address ,@contact ,@licensenumber ,@socialsecurity)";
                SqlCommand com = new SqlCommand(insertq, conn);
                com.Parameters.AddWithValue("@id", newid.ToString());
                com.Parameters.AddWithValue("@Uname", UN.Text);
                com.Parameters.AddWithValue("@firstname", Firstname.Text);
                com.Parameters.AddWithValue("@lastname", Lastname.Text);
                com.Parameters.AddWithValue("@age", age.Text.Trim());
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@password", pass.Text);
                com.Parameters.AddWithValue("@country", country.SelectedItem.ToString());
                com.Parameters.AddWithValue("@state", city.Text);
                com.Parameters.AddWithValue("@address", address.Text);
                com.Parameters.AddWithValue("@contact", contact.Text);
                com.Parameters.AddWithValue("@licensenumber", license.Text);
                com.Parameters.AddWithValue("@socialsecurity", nic.Text);
                com.ExecuteNonQuery();
                Response.Redirect("LoginTrainee.aspx");

            }

            conn.Close();
            

        }
        catch(Exception ex)
        {
           
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginTrainee.aspx");
    }
}