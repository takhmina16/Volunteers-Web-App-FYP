using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

//Programmer Name: Takhmina Sharipova, Senior BIS Student at APU, Technology Park Malaysia. 
//FYP Project: The Establishement of "APU Student Volunteers" Organization with Centralized Web Application 
//              to facilitate Co-Curriculars Placement 
//Date: 23 December 2020

namespace FYP_Volunteering.User_Login_Register.Logged_to_System
{
    public partial class apply_volunteer : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getExperienceByID();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
        // add button: 
        protected void Button4_Click(object sender, EventArgs e)
        {
            addNewExperience(); 
        }
        void addNewExperience()
        {
            try
            {
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                // genres = Adventure,Self Help,
                //removes the comma: 
                genres = genres.Remove(genres.Length - 1);


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO user_apply_experience_tbl" +
                    "(experience_id,experience_name,genre," +
                    "recruiter_name,country,publish_date,mob_no,comments) " +
                    "values (@experience_id,@experience_name,@genre,@recruiter_name,@country,@publish_date," +
                    "@mob_no,@comments)", con);


                cmd.Parameters.AddWithValue("@experience_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@experience_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@recruiter_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@mob_no", TextBox5.Text.Trim());              
                cmd.Parameters.AddWithValue("@comments", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Volunteering Experience added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void getExperienceByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_apply_experience_tbl WHERE experience_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["experience_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["publish_date"].ToString();
                    TextBox4.Text = dt.Rows[0]["manager"].ToString();
                    TextBox5.Text = dt.Rows[0]["mob_no"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["comments"].ToString();

                    DropDownList1.SelectedValue = dt.Rows[0]["country"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for (int i = 0; i < genre.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;

                            }
                        }
                    }
                }
                else
                {
                   
                }

            }
            catch (Exception ex)
            {

            }
        }
        void updateExperienceByID()
        {
            if (checkIfExperienceExists())
            {
                try
                {
                    string genres = "";
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        genres = genres + ListBox1.Items[i] + ",";
                    }
                    genres = genres.Remove(genres.Length - 1);

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE user_apply_experience_tbl set experience_name=@experience_name," +
                        " genre=@genre, recruiter_name=@recruiter_name, " +
                        "country=@country, publish_date=@publish_date, mob_no=@mob_no, " +
                        "comments=@comments", con);

                    cmd.Parameters.AddWithValue("@experience_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@recruiter_name", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());                   
                    cmd.Parameters.AddWithValue("@mob_no", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@comments", TextBox6.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Volunteering Experience Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Volunteering Experience ID');</script>");
            }
        }
        bool checkIfExperienceExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_apply_experience_tbl where experience_id='" + TextBox1.Text.Trim()
                    + "' OR experience_name='" + TextBox2.Text.Trim() + "';", con);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            updateExperienceByID();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            deleteExperienceByID();
        }
        // user defined functions
        void deleteExperienceByID()
        {
            if (checkIfExperienceExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from user_apply_experience_tbl WHERE experience_id='" 
                        + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Volunteering Experience Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Volunteering Experience ID');</script>");
            }
        }
    }
}