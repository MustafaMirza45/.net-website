using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack)
            {
                
            }
            else
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from Traineeskills where ID='" + Session["ID"].ToString() + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                SqlDataReader dr = com.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        personalstatement.Text = dr.GetValue(2).ToString();
                        Skills.Text = dr.GetValue(3).ToString();
                        rate.Text = dr.GetValue(4).ToString();
                        Availability.Text = dr.GetValue(5).ToString();
                        Experience.Text = dr.GetValue(6).ToString();

                    }
                }
                conn.Close();
            }
                
            
               
           
        }

        catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    
    protected void update_Click(object sender, EventArgs e)
    {   
        
        
        try
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
            conn.Open();       
            string checkuser = "select count(*) from Traineeskills where ID='" + Session["ID"].ToString().Trim() + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
                co.Open();
                string update = "update Traineeskills set Personal_statement=@ps, Skills=@skill , Required_rate=@rr, Available=@ava, Experience=@exp where ID=@id";
                SqlCommand comma = new SqlCommand(update, co);
                comma.Parameters.AddWithValue("@id", Session["ID"].ToString());
                comma.Parameters.AddWithValue("@ps", personalstatement.Text.ToString());
                comma.Parameters.AddWithValue("@skill", Skills.Text.ToString());
                comma.Parameters.AddWithValue("@rr", rate.Text.ToString().Trim());
                comma.Parameters.AddWithValue("@ava", Availability.Text.ToString());
                comma.Parameters.AddWithValue("@exp", Experience.Text.ToString());
                comma.ExecuteNonQuery();
                co.Close();
            }
            else if (temp==0)
            {
                SqlConnection conne = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
                conne.Open();
                string insert = "insert into Traineeskills(ID,Personal_statement,Skills,Required_rate,Available,Experience) values (@id,@ps,@skill,@rr,@ava,@exp)";
                SqlCommand comman = new SqlCommand(insert, conne);
                comman.Parameters.AddWithValue("@id", Session["ID"].ToString().Trim());
                comman.Parameters.AddWithValue("@ps", personalstatement.Text.ToString().Trim());
                comman.Parameters.AddWithValue("@skill", Skills.Text.ToString().Trim());
                comman.Parameters.AddWithValue("@rr", rate.Text.ToString().Trim());
                comman.Parameters.AddWithValue("@ava", Availability.Text.ToString().Trim());
                comman.Parameters.AddWithValue("@exp", Experience.Text.ToString().Trim());
                comman.ExecuteNonQuery();
                conne.Close();
                Response.Write("<script>alert('inserted Successfully');</script>");
            }
            
            Response.Redirect("Userprofile.aspx");
        }

        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
        
    }
    
}