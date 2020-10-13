using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employerprofile : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            guid.Text = Session["ID"].ToString().Trim();
        }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

        
    }
    //add
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Response.Write("<script>alert('Please fill fields');</script>");
            }
            else
            {
                if (job_exist())
                {
                    Response.Write("<script>alert('job already EXISTS');</script>");
                }
                else
                {
                    add_job();
                    Response.Redirect("Employerprofile.aspx");
                }
            }
        }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
       
       
    }
    //update
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Response.Write("<script>alert('Please fill fields');</script>");
            }
            else
            {
                if (job_exist())
                {
                    update_job();
                    Response.Redirect("Employerprofile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('job does not EXIST');</script>");
                    
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    //delete
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('Please Enter job name');</script>");
            }
            else
            {
                if (job_exist())
                {
                   delete_job();
                    Response.Redirect("Employerprofile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('job does not EXIST');</script>");

                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
  

    //functions
    bool job_exist()
    {
        conn.Open();
        string checkuser = "select count(*) from Employerjobs where job_name='" + TextBox1.Text.ToString() + "'";
        SqlCommand comm = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            return true;
        }
        else
        {
           
            return false;
        }
    }
    //add job if doesnt exist
    void add_job()
    {
        conn.Open();
        
        string insert = "insert into Employerjobs(ID,job_name,minimum_salary,min_hours,vacant) values (@ID,@job_name,@minimum_salary,@min_hours,@vacant)";
        SqlCommand comman = new SqlCommand(insert, conn);
        comman.Parameters.AddWithValue("@ID", Session["ID"].ToString().Trim());
        comman.Parameters.AddWithValue("@job_name", TextBox1.Text.ToString().Trim());
        comman.Parameters.AddWithValue("@minimum_salary", TextBox2.Text.ToString().Trim());
        comman.Parameters.AddWithValue("@min_hours", TextBox3.Text.ToString().Trim());
        comman.Parameters.AddWithValue("@vacant", CheckBox1.Checked);
        comman.ExecuteNonQuery();
        conn.Close();
    }

    void update_job()
    {
        conn.Open();
        string update = "update Employerjobs set job_name=@jn , minimum_salary=@ms, min_hours=@mh , vacant=@va where job_name=@jn";
        SqlCommand comma = new SqlCommand(update, conn);
       
        comma.Parameters.AddWithValue("@jn", TextBox1.Text.ToString().Trim());
        comma.Parameters.AddWithValue("@ms", TextBox2.Text.ToString().Trim());
        comma.Parameters.AddWithValue("@mh", TextBox3.Text.ToString().Trim());
        comma.Parameters.AddWithValue("@va", CheckBox1.Checked);
        comma.ExecuteNonQuery();
        conn.Close();
    }
    void delete_job()
    {
        conn.Open();
        string delete = "Delete from Employerjobs where job_name=@jn";
        SqlCommand comma = new SqlCommand(delete, conn);
        comma.Parameters.AddWithValue("@jn", TextBox1.Text.ToString().Trim());
        comma.ExecuteNonQuery();
        conn.Close();
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        
    }

   
}