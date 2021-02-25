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

namespace FYP_Volunteering
{
    public partial class Admin_Experience_Mngm : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillAuthorPublisherValues();
            }

            GridView1.DataBind();
        }
        // Go button click: 
        protected void LinkButton4_Command(object sender, CommandEventArgs e)
        {
            getExperienceByID();
        }
        // Add button click: 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfExperienceExists())
            {
                Response.Write("<script>alert('Volunteering Experience Already Exists, try some other ID');</script>");
            }
            else
            {
                addNewExperience();
            }
        }
        // Update button click : 
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateExperienceByID();
        }
        // Delete button click: 
        protected void Button2_Click(object sender, EventArgs e)
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

                    SqlCommand cmd = new SqlCommand("DELETE from experience_detailed_tbl WHERE experience_id='" + TextBox1.Text.Trim() + "'", con);

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
                    SqlCommand cmd = new SqlCommand("UPDATE experience_detailed_tbl set experience_name=@experience_name," +
                        " genre=@genre, recruiter_name=@recruiter_name, publish_date=@publish_date, " +
                        "country=@country, manager=@manager, mob_no=@mob_no, phone_no=@phone_no, " +
                        "exp_description=@exp_description", con);

                    cmd.Parameters.AddWithValue("@experience_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@recruiter_name", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@manager", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@mob_no", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone_no", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@exp_description", TextBox6.Text.Trim());

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


        void getExperienceByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from experience_detailed_tbl WHERE experience_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["experience_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["publish_date"].ToString();
                    TextBox9.Text = dt.Rows[0]["manager"].ToString();
                    TextBox10.Text = dt.Rows[0]["mob_no"].ToString().Trim();
                    TextBox11.Text = dt.Rows[0]["phone_no"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["exp_description"].ToString();

                    DropDownList1.SelectedValue = dt.Rows[0]["country"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["recruiter_name"].ToString().Trim();

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
                    Response.Write("<script>alert('Invalid Volunteering Experience ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        void fillAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT org_name from org_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                cmd = new SqlCommand("SELECT recruiter_name from recruiter_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "recruiter_name";
                DropDownList2.DataBind();

            }
            catch (Exception ex)
            {

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

                SqlCommand cmd = new SqlCommand("SELECT * from experience_detailed_tbl where experience_id='" + TextBox1.Text.Trim()
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

                SqlCommand cmd = new SqlCommand("INSERT INTO experience_detailed_tbl(experience_id,experience_name,genre," +
                    "recruiter_name,publish_date,country,manager,mob_no,phone_no,exp_description) " +
                    "values (@experience_id,@experience_name,@genre,@recruiter_name,@publish_date," +
                    "@country,@manager,@mob_no,@phone_no,@exp_description)", con);


                cmd.Parameters.AddWithValue("@experience_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@experience_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@recruiter_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@manager", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@mob_no", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_no", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@exp_description", TextBox6.Text.Trim());

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
    }
}