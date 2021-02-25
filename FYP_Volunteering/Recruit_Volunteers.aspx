<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="Recruit_Volunteers.aspx.cs" Inherits="FYP_Volunteering.Recruit_Volunteers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="CSS Styles - Main/recruitment.css" /> 
    <link rel="stylesheet" href="CSS Styles - Main/global.css" />
    
    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="CSS Styles - Main/aos.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <!--Site Title-->
        <section class="site-title"> 
            <div class="site-background" data-aos="fade-up" data-aos-delay="100">
                <h1 style="font-size: 40px; text-align:center;">We send you good volunteers to help with your good cause</h1>
                <h2 style="text-align:center;"> from our network of more than 13 million volunteers.</h2>
                <h3 style="text-align:center;">We make it fast, easy and effective.</h3>
                <center> 
                    <button class="btn" style="text-align:center;"><a href="Recruiter_Login/recruiter_login.aspx" style="text-decoration: none; color: white;">Get Volunteers &nbsp;<i class="fas fa-arrow-right"></i></a></button>
                </center>
            </div>
            <br /> 
        </section>
        <br />
       <!-- <section> 
            <center>
                <div> 
                    <img src="img/info-recruit.PNG" style="width: 75%; height:70%; text-align: center;"/> 
                </div>
            </center>
        </section> --> 
        <section>
            <center>
                <div> 
                    <br /> <!-- <hr style="width: 80%;"/> --> 
                    <h1 style="color: #3f4954;"> Who can join us? </h1>
                    <img src="img/info-recruit2.PNG" style="width: 90%; height:80%;"/> 
                    <br /> <br /> <br /> <hr style="width: 80%;"/> <br /> <br /> 
                    <h1 style="color: #3f4954;"> Join the largest volunteer network in three steps: </h1>
                    <img src="img/info-recruit3.PNG" style="width: 85%; height:70%;"/> 
                </div>
            </center>
        </section>
        <br /> <br /> <hr style="width: 80%;"/><br /> <br /> 
        <section> 
            <center>
                <div> 
                    <h2> Our Mission: </h2>
                    <img src="img/info-recruit.PNG" style="width: 75%; height:70%; text-align: center;"/> 
                </div>
            </center>
        </section>
        <br /> <br />
        <div > 
            <center>
                <button class="btn" style="text-align:center;"><a href="Recruiter_Login/recruiter_login.aspx" style="text-decoration: none; color: red;">Get Volunteers &nbsp;<i class="fas fa-arrow-right"></i></a></button>
            </center>
        </div>
        <br /> <br /> <br /> <br /> 
        <!-----x----Site Title-----x------>

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
    </main>
</asp:Content>
