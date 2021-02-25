<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="virtual1.aspx.cs" Inherits="FYP_Volunteering.Volunteer_Opportunity.opportunities_x9.virtual1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="../CSS Styles - Main/all_opportunity.css" /> 
    
    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="../CSS Styles - Main/aos.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <main>
       <br /> 
       <hr style="width:60%;"/> 
       <h1 style="text-align:center;">Virtual Opportunity</h1>
       <hr style="width:70%;"/> 
          <!---------------- Site Content --------------->
    <section class="container">
        <div class="site-content">
            <div class="posts">
                <h2 style="color: #3f4954;">Information Governance and Compliance Analyst </h2>
                <p> SCHOOL GROUP</p>
                <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                    <div class="post-image">
                        <div>
                            <img src="../img/V_Opportunity/hire.jpg" class="img" alt="volunteer">
                        </div>
                    </div>
                    <div class="post-title"> 
                        <p><b>ROLE DESCRIPTION:</b></p>
                        <p><b>Position:</b>  Information Governance and Compliance Analyst</p>
                        <p><b>Department:</b> Quality Management</p>
                        <p><b>Reports to:</b> Quality Team Lead</p>
                        <p><b>About SCHOOL GROUP</b></p>
                        <p> School Group (SG) is a start-up international non-profit developing 
                            a cutting-edge global e-learning platform that will allow students 
                            around the world to connect for peer-to-peer collaborative learning 
                            and skills development - improving the accessibility and quality of education,
                            while transforming lives and impacting future.</p>
                        <iframe width="100%" height="300px" src="https://www.youtube.com/embed/tgbNymZ7vqY">
                        </iframe>
                        <br /><br /><hr /> 
                        <p> <b>Location: </b>1700 Atlas RD, Cedar Park, TX 78613, US</p>
                        <p> <b>Mission Statement: </b><br /><br /> To establish a leading global educational research and
                            development organization with a goal to improve learning, performance, evaluation,
                            and measurement in the educational sector.</p>
                        <p> <b>Description: </b><br /> <br /> School Group is a platform that aims to connect schools from
                            various parts of the world. Our goal is to provide an e-learning community that 
                            focuses on a cross cultural peer learning experience. In doing so, we hope to promote
                            collaboration, communication and to bridge the educational gap in a rapidly changing 21st 
                            century generation. For more information, please visit our website www.schoolgroup.org.</p>
                             <button class="btn post-btn"><a href="../User_Login_Register/user_login.aspx" style="font-size:20px;">I want to help! Apply &nbsp;</a><i class="fas fa-arrow-right"></i></button>
                    </div>
                            <br /> <br /> <div class="post-info flex-row">
                                <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;Posted by: Admin </span>
                            </div>
                            <div> 
                                <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;December 1, 2020</span>
                            </div>
                            <div> 
                                <span>29 Interested</span>
                        </div>
                </div>
                <br /> <br /> 
            </div>
            <aside class="sidebar">
                <div class="popular-post">
                    <h2 style="color: #3f4954;">Detailed Information:</h2>
                    <p> Posted on 1 Dec 2020</p>
                    <div class="post-content">
                        <div class="post-content" data-aos="flip-up" data-aos-delay="200">
                            <div class="post-image">
                                <div>
                                    <img src="../img/V_Opportunity/info-table.PNG" class="img" alt="blog2">
                                </div>
                                <div class="post-info flex-row">
                                    <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;December 1, 2020</span>
                                    <span>15 Comments</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </aside> 
        </div>
    <hr /> <br />
               <div style="text-align:center">
            <h3> We strive to generate the best content for our visitors!</h3>
        <p>Check out the social media sites for more infromation!</p>
        </div>
              <table style="width: 100%; text-align:center;">
           <p style="text-align:center;"> Open for Collaborations! </p>
           <tr> 
               <td> <img src="../Images/ad2.jpg" class="Ad_Img" /> </td> 
               <td> <img src="../Images/ad2.jpg" class="Ad_Img"/> </td>
               <td><img src="../Images/ad2.jpg" class="Ad_Img"/> </td>
           </tr>
       </table>
        <br />
            <div style="text-align:center;">
                <p style="text-align:center"> by <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HomePage.aspx">Student Volunteers</asp:HyperLink> </p>
            </div>
        <br /> 
        <script> $(function () {
                AOS.init();
            });
        </script>
    </section>
    <!---------------- Site END Content --------------->   
    </main>



    <!-- To Activate AOS of Footer --> 
            <script> $(function () {
                    AOS.init();
                });
            </script>  
    <!-- JQuery File --> 
    <script src="../JavaScript_Main/Jquery3.5.1.min.js"></script>
    <!-- ------------ AOS js Library  ------------------------- -->
    <script src="../JavaScript_Main/aos.js"></script>
    <!-- Java Script File --> 
    <script src="../JavaScript_Main/main.js"></script>
</asp:Content>
