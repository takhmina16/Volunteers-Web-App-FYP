<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="Main_About_Us.aspx.cs" Inherits="FYP_Volunteering.Main_About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="CSS Styles - Main/global.css" />
    <link rel="stylesheet" href="../CSS Styles - Main/about_us.css" /> 
    
    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="CSS Styles - Main/aos.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <!-- MAIN (Center website) --> 
    <main> 
            <section class="site-title"> 
            <div class="site-background" data-aos="fade-up" data-aos-delay="100">
                <h1 style=" text-align:center;">ABOUT US</h1>
                <h2 style="text-align:center;"> "Student Volunteers" Organization.</h2>
                <hr /> 
                <center> 
                    <button class="btn" style="text-align:center;"><a href="#team" 
                        style="text-decoration: none; color:white;">Discover Team &nbsp;<i class="fas fa-arrow-right"></i></a></button>
                </center>
            </div>
            <br /> 
        </section>
        <center> 
            <br /><p style="text-align: center; font-family:raleway; width: 90%;"><b> Description:</b> 
            "We believe everyone should have the chance to make a difference. 
            That's why we make it easy for good people and good causes to connect. 
            We've connected millions of people with a great place to volunteer and 
            helped tens of thousands of organizations better leverage volunteers to 
            create real impact. We also offer corporate solutions." </p>
        </center>
        <p style="text-align: center;"><b>Mission: </b> Volunteer Canada provides national leadership and expertise
            on volunteerism to increase the participation, quality and diversity of volunteer experiences.</p>
        <p style="text-align: center;"><b>Vision: </b> Involved Canadians build strong and connected communities to create a vibrant Canada.</p>
        <p><b>RELATIONSHIPS: </b>VolunteerMatch is about relationships. We are a service that brings good people and good causes together.
            We believe that the health of our community can be measured by the relationships formed between volunteers and the nonprofits they serve.
            Our aim is to build services that overcome the barriers that keep volunteers and nonprofits from finding each other, working together,
            and developing strong relationships. <br /><br /> <b>PARTNERSHIPS:</b> VolunteerMatch is about cooperation. We are a network that is only as strong as 
            the partnerships that support it. None of us can build a community alone. We take partnerships seriously and seek to work with nonprofit,
            business and governmental leaders committed to building stronger relationships with their constituents around volunteering and service.</p>


<br /> <br />
 <!-- Portfolio Gallery Grid -->
    <hr id="team"/> 
    <h2 style="text-align: center;"> Team Members:</h2>
<div class="row"> 
<div class="column nature">     
<div class="content">  
<img src="img/article/article4.jpg" alt="Virtual Volunteering" style="width:100%">      
        <h4 style="text-align: center;">Zhanel Abdrakhman</h4>
    <p style="text-align: center;">Marketing Director <br /> 
    "Driven, passionate & smart"</p>
</div>
</div>
<div class="column nature">   
    <div class="content">   
        <img src="img/article/article4.jpg" alt="Virtual Volunteering" style="width:100%">   
        <h4 style="text-align: center;">Zhanel Abdrakhman</h4>
    <p style="text-align: center;">Marketing Director <br /> 
    "Driven, passionate & smart"</p>
    </div>  

</div> 
     <div class="column nature">    
         <div class="content">   
             <img src="img/article/article4.jpg" alt="Virtual Volunteering" style="width:100%">    
        <h4 style="text-align: center;">Zhanel Abdrakhman</h4>
    <p style="text-align: center;">Marketing Director <br /> 
    "Driven, passionate & smart"</p>
         </div>  

     </div>  
        <!-- END GRID -->   
    </div>
</main>
    <!-- END MAIN --> 
    <br /> <br /> <br />     
   <br /><br /> 
    </div> 
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
