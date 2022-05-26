using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("none"))
                {
                    LinkButton1.Visible = true;//login
                    LinkButton2.Visible = true;//signup
                    LinkButton4.Visible = true;//viewbooks
                    LinkButton6.Visible = true;//adminlogin

                    LinkButton3.Visible = false;//logout
                    LinkButton7.Visible = false;//hellouser
                    LinkButton8.Visible = false;//bookinventary
                    LinkButton9.Visible = false;//bookissue
                    LinkButton10.Visible = false;//membermgm
                    LinkButton11.Visible = false;//auhtormgm
                    LinkButton12.Visible = false;//publishermgm
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;//login
                    LinkButton2.Visible = false;//signup
                    LinkButton4.Visible = true;//viewbooks
                    LinkButton6.Visible = true;//adminlogin

                    LinkButton3.Visible = true;//logout
                    LinkButton7.Visible = true;//hellouser
                    LinkButton7.Text = "Hello "+Session["username"].ToString();
                    LinkButton8.Visible = false;//bookinventary
                    LinkButton9.Visible = false;//bookissue
                    LinkButton10.Visible = false;//membermgm
                    LinkButton11.Visible = false;//auhtormgm
                    LinkButton12.Visible = false;//publishermgm
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;//login
                    LinkButton2.Visible = false;//signup
                    LinkButton4.Visible = true;//viewbooks
                    LinkButton6.Visible = false;//adminlogin

                    LinkButton3.Visible = true;//logout
                    LinkButton7.Visible = true;//hellouser
                    LinkButton7.Text = "Hello Admin";
                    LinkButton8.Visible = true;//bookinventary
                    LinkButton9.Visible = true;//bookissue
                    LinkButton10.Visible = true;//membermgm
                    LinkButton11.Visible = true;//auhtormgm
                    LinkButton12.Visible = true;//publishermgm
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("authormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("pulishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookissue.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("membermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('" + Session["username"].ToString() + " Logout Successfull!');</script>");

            Session["username"] = "none";
            Session["fullname"] = "none";
            Session["status"] = "none";
            Session["role"] = "none";

            LinkButton1.Visible = true;//login
            LinkButton2.Visible = true;//signup
            LinkButton4.Visible = true;//viewbooks
            LinkButton6.Visible = true;//adminlogin

            LinkButton3.Visible = false;//logout
            LinkButton7.Visible = false;//hellouser
            LinkButton8.Visible = false;//bookinventary
            LinkButton9.Visible = false;//bookissue
            LinkButton10.Visible = false;//membermgm
            LinkButton11.Visible = false;//auhtormgm
            LinkButton12.Visible = false;//publishermgm

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}