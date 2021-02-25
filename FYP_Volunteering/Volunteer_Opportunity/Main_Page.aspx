<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="Main_Page.aspx.cs" Inherits="FYP_Volunteering.Volunteer_Opportunity.Main_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="../CSS Styles - Main/opportunity.css" /> 
    <link rel="stylesheet" href="../CSS Styles - Main/global.css" />
    
    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="../CSS Styles - Main/aos.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- MAIN (Center website) --> 
<div class="main"> 
    <div class="title"> 
    <h1>VOLUNTEERING OPPORTUNITIES</h1>
        <p> Dates: Dec 2020 - 2021 </p>
        <hr /> 
</div> 
    <h2>EXPLORE</h2> 
<input type="radio" name="group" id="all" checked><label for="all">All</label>

<input type="radio" name="group" id="nature"><label for="nature">Virtual</label>
<input type="radio" name="group" id="cars"><label for="cars">Abroad</label>
<input type="radio" name="group" id="people"><label for="people">Donation</label>

 <!-- Portfolio Gallery Grid -->
<div class="row"> 
<div class="column nature">     
<div class="content">  
<img src="../img/V_Opportunity/virtual.jpg" alt="Virtual Volunteering" style="width:100%">      
        <h4>1. Virtual Volunteering: Online Teaching</h4>
    <p> Teach kids and adults English and get your karma leviated</p>
        <button class="button button2"><a href="virtual1.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
</div>
</div>
<div class="column nature">   
    <div class="content">   
        <img src="../img/V_Opportunity/virtual.jpg" alt="Virtual Volunteering" style="width:100%">   
        <h4>2. Virtual Volunteering: Managing a Blog</h4>  
    <p> Manage a Digital Blog for <b>'Blood Donation'</b> in Krakow, Poland</p>
        <button class="button button2"><a href="virtual2.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button> 

    </div>  

</div> 
     <div class="column nature">    
         <div class="content">   
             <img src="../img/V_Opportunity/virtual.jpg" alt="Virtual Volunteering" style="width:100%">    
             <h4>3. Virtual Volunteering: Organization of a Fair</h4>    
    <p> Assist in organizing a huge virtual event with MindValley on 31 Dec, 2020</p>
        <button class="button button2"><a href="virtual3.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button> 

         </div>  

     </div>  
        <div class="column cars"> 
            <div class="content">  
                <img src="../img/V_Opportunity/abroad.jpg" alt="Car" style="width:100%"> 
                <h4>1. Europe: Volunteering Experiences</h4>
    <p> Opportunities in Europian countries for 2021</p>
        <button class="button button2"><a href="abroad1.aspx" style="text-decoration:none; color: white;">Explore!</a></button>
            </div> 

        </div> 
        <div class="column cars">   
            <div class="content">   
                <img src="../img/V_Opportunity/abroad.jpg" alt="Car" style="width:100%">  
                <h4>2. Asia: Volunteering Experiences</h4>   
    <p> Opportunities in Asian countries for 2021</p>
        <button class="button button2"><a href="abroad2.aspx" style="text-decoration:none; color: white;">Explore!</a></button>
            </div> 

        </div> 
        <div class="column cars">  
            <div class="content"> 
                <img src="../img/V_Opportunity/abroad.jpg" alt="Car" style="width:100%">   
                <h4>3. Latin America: Volunteering Experiences</h4>  
    <p>Opportunities in Latin American countries for 2021 </p>
        <button class="button button2"><a href="abroad3.aspx" style="text-decoration:none; color: white;">Explore!</a></button>
            </div> 

        </div> 
        <div class="column people">  
            <div class="content">     
                <img src="../img/V_Opportunity/donation.jpg" alt="Car" style="width:100%">    
                <h4>1. Donation: Pets & Animals</h4>   
    <p>Collaboration with xDazed for donations to help our little friends </p>
        <button class="button button2"><a href="donation1.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
            </div> 

        </div> 
        <div class="column people">   
            <div class="content">  
                <img src="../img/V_Opportunity/donation.jpg" alt="Car" style="width:100%">   
                <h4>2. Donation: COVID-19 Help to Doctors</h4>   
    <p> Assist heroes during hard pandemics times! Webinar on 31 Dec, 2020 </p>
        <button class="button button2"><a href="donation2.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
            </div>  

        </div> 
        <div class="column people">    
            <div class="content">  
                <img src="../img/V_Opportunity/donation.jpg" alt="Car" style="width:100%">   
                <h4>3. Donation: Homeless during Winter</h4>   
    <p>Winter is here! Help those who don't have a shelter! Lets warm each other. </p>
        <button class="button button2"><a href="donation3.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
            </div> 

        </div>
        <!-- END GRID -->

    </div>
    <!-- END MAIN --> 
</div> 
   <br />
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
