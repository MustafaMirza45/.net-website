using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["client"] != null)
            {
                if (Session["client"].Equals(""))
                {
                    loginc.Visible = true;
                    logint.Visible = true;
                    Logout.Visible = false;
                    userprofile.Visible = false;
                    companyprofile.Visible = false;
                    welcome.Visible = false;
                    Jobs.Visible = false;
                    Trainees.Visible = false;


                }
                else if (Session["client"].Equals("company"))
                {
                    loginc.Visible = false;
                    logint.Visible = false;
                    signup.Visible = false;
                    userprofile.Visible = false;
                    companyprofile.Visible = true;
                    companysignup.Visible = false;
                    welcome.Text = "Welcome  " + Session["new"].ToString();
                    Jobs.Visible = false;
                    Trainees.Visible = true;
                    Logout.Visible = true;
                }
                else if (Session["client"].Equals("trainee"))
                {
                    loginc.Visible = false;
                    logint.Visible = false;
                    signup.Visible = false;
                    userprofile.Visible = true;
                    companyprofile.Visible = false;
                    welcome.Text = "Welcome  " + Session["new"].ToString();
                    Jobs.Visible = true;
                    Trainees.Visible = false;
                    companysignup.Visible = false;
                    Logout.Visible = true;
                }
            }
            else
            {
                Session["New"] = "";
                Session["ID"] = "";
                Session["client"] = "";
                loginc.Visible = true;
                logint.Visible = true;
                Logout.Visible = false;
                userprofile.Visible = false;
                companyprofile.Visible = false;
                welcome.Visible = false;
                Jobs.Visible = false;
                Trainees.Visible = false;
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");
        }
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("registeration.aspx");
    }
    protected void signup2_Click(object sender, EventArgs e)
    {
        Response.Redirect("companyregisteration.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["New"] = "";
        Session["ID"] = "";
        Session["client"] = "";
        Response.Redirect("User.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginTrainee.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employerlogin.aspx");
    }

    protected void companyprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employerprofile.aspx");
    }

    protected void userprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userprofile.aspx");
    }

    protected void welcome_Click(object sender, EventArgs e)
    {

    }

    protected void jobs_Click(object sender, EventArgs e)
    {
        Response.Redirect("jobsearch.aspx");
    }

    protected void Trainee_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchEmployee.aspx");
    }
}
