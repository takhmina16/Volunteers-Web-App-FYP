using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Programmer Name: Takhmina Sharipova, Senior BIS Student at APU, Technology Park Malaysia. 
//FYP Project: The Establishement of "APU Student Volunteers" Organization with Centralized Web Application 
//              to facilitate Co-Curriculars Placement 
//Date: 23 December 2020

namespace FYP_Volunteering
{
    public partial class publisher_mgmt : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // Add Button click: 
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfRecruiterExists())
            {
                Response.Write("<script>alert('Recruiter with this ID already Exist. You cannot add another Recruiter with the same ID');</script>");
            }
            else
            {
                addNewRecruiter();
            }
        }
        //Update Button click: 

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfRecruiterExists())
            {
                updateRecruiter();

            }
            else
            {
                Response.Write("<script>alert('Recruiter does not exist');</script>");
            }
        }
        // Delete Button click 
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfRecruiterExists())
            {
                deleteRecruiter();

            }
            else
            {
                Response.Write("<script>alert('Recruiter does not exist');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getRecruiterByID();
        }
        // user defined function
        void getRecruiterByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from recruiter_master_tbl where recruiter_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Recruiter ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        void deleteRecruiter()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from recruiter_master_tbl  WHERE recruiter_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Recruiter Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateRecruiter()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE recruiter_master_tbl SET recruiter_name=@recruiter_name " +
                    "WHERE recruiter_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@recruiter_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Recruiter Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewRecruiter()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO recruiter_master_tbl(recruiter_id,recruiter_name)" +
                    " values(@recruiter_id,@recruiter_name)", con);

                cmd.Parameters.AddWithValue("@recruiter_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@recruiter_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Recruiter added Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        bool checkIfRecruiterExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from recruiter_master_tbl where recruiter_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}