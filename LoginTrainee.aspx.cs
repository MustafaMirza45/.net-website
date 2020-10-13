using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginTrainee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registraineeConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select * from RegisterationTrainee where UserName='" + Usernamelogin.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            SqlDataReader dr = com.ExecuteReader();
           
            if (dr.HasRows)
            {

                while (dr.Read())
                {
                    string password = dr.GetValue(6).ToString().Replace(" ","");

                    if (password == Passwordlog.Text)
                    {
                        Session["New"] = Usernamelogin.Text;
                        Session["ID"] = dr.GetValue(0).ToString();
                        Session["client"] = "trainee";
                        Response.Write("Password is correct");
                        Response.Redirect("User.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Password incorrect');</script>");
                    }
                }
                

            }else
            {
                Response.Write("<script>alert('Username incorrect');</script>");
            }
            conn.Close();
        }
    }
}