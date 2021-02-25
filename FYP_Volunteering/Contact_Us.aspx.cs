using System;
using System.Net.Mail; 

//Programmer Name: Takhmina Sharipova, Senior BIS Student at APU, Technology Park Malaysia. 
//FYP Project: The Establishement of "APU Student Volunteers" Organization with Centralized Web Application 
//              to facilitate Co-Curriculars Placement 
//Date: 23 December 2020

namespace FYP_Volunteering
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("takhmina777@gmail.com");
                    mailMessage.To.Add("takhmina777@gmail.com");
                    mailMessage.Subject = txtSubject.Text;

                    // Mail Body shown in the Email: 
                    mailMessage.Body = "<b>Sender Name: </b>" + txtName.Text + "<br/>"
                        + "<b>Sender Email: </b>" + txtEmail.Text + "<br/>"
                        + "<b>Comments: </b>" + txtComments.Text;
                    mailMessage.IsBodyHtml = true;

                    // Send the email to the address (organization's)
                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new System.Net.NetworkCredential("takhmina777@gmail.com", "");
                    smtpClient.Send(mailMessage);

                    //Feedback to User: 
                    Label1.ForeColor = System.Drawing.Color.Blue;
                    Label1.Text = "Thank You for Contacting Us!";

                    //Deletion of the text inserted: 
                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtComments.Enabled = false;
                    txtSubject.Enabled = false;
                    Button1.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                // Log - Event Viewer or Table:
                Label1.ForeColor = System.Drawing.Color.Blue;
                Label1.ForeColor = System.Drawing.Color.Red; 
                Label1.Text = "There is an Unknown Problem. Please Try Again.";
            }
        }
    }
}