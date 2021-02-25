<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="FYP_Volunteering.Articles_Main.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="../CSS Styles - Main/article_main.css" /> 
    <link rel="stylesheet" href="../CSS Styles - Main/global.css" />
    
    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="../CSS Styles - Main/aos.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!-- MAIN (Center website) --> 
<div class="main"> 
    <div class="title"> 
    <h1 style="text-align: center;">VOLUNTEERING ARTICLES</h1>
        <p style="text-align: center;"> Author: "Student Volunteers" Organization </p>
        <hr /> 
</div> 
    <h4 style="text-align: center;">"The wisdom is attained through the nerve cells clicking, hence let them be" - Darwin</h4> 
<input type="radio" name="group" id="all" checked><label for="all">All</label>

<input type="radio" name="group" id="nature"><label for="nature">General</label>
<input type="radio" name="group" id="cars"><label for="cars">Foreign Lands</label>
<input type="radio" name="group" id="people"><label for="people">Donations</label>

 <!-- Portfolio Gallery Grid -->
<div class="row"> 
<div class="column nature">     
<div class="content">  
<img src="../img/article/article1.jpg" alt="Virtual Volunteering" style="width:100%">      
        <h4>1. Loved by our Volunteers: Reviews Yeay!</h4>
    <p>Karma gets cleaned and thus our heros. Check out what they have to say!</p>
        <button class="button button2"><a href="article1.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
</div>
</div>
<div class="column nature">   
    <div class="content">   
        <img src="../img/article/article2.jpg" alt="Virtual Volunteering" style="width:100%">   
        <h4>2. Mental Health Benefits from Volunteering</h4>  
    <p> Learn more about <b>'Alluring Benefits'</b>of Volunteering Experiences!</p>
        <button class="button button2"><a href="article2.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button> 

    </div>  

</div> 
     <div class="column nature">    
         <div class="content">   
             <img src="../img/article/article3.jpg" alt="Virtual Volunteering" style="width:100%">    
             <h4>3. Safety Regulations for Volunteers</h4>    
    <p> Study our safety rules for better volunteering experiences.</p>
        <button class="button button2"><a href="article3.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button> 

         </div>  

     </div>  
        <div class="column cars"> 
            <div class="content">  
                <img src="../img/article/article4.jpg" alt="Car" style="width:100%"> 
                <h4>1. Volunteering in Africa: Get Loaded for Safari</h4>
    <p> Exposed: The Reality of Volunteering in African countries</p>
        <button class="button button2"><a href="article4.aspx" style="text-decoration:none; color: white;">Explore!</a></button>
            </div> 

        </div> 
        <div class="column cars">   
            <div class="content">   
                <img src="../img/article/article4.jpg" alt="Car" style="width:100%">  
                <h4>2. Opportunities in Wild Asian Fauna: Get Loaded! </h4>   
    <p>Exposed: The Reality of Volunteering in Wild & Strict Asian countries</p>
        <button class="button button2"><a href="article5.aspx" style="text-decoration:none; color: white;">Explore!</a></button>
            </div> 

        </div> 
        <div class="column cars">  
            <div class="content"> 
                <img src="../img/article/article4.jpg" alt="Car" style="width:100%">   
                <h4>3. Opportunities in Middle East: Get Loaded! </h4>  
    <p>Exposed: The Reality of Volunteering in Middle Eastern countries</p>
        <button class="button button2"><a href="article6.aspx" style="text-decoration:none; color: white;">Explore!</a></button>
            </div> 

        </div> 
        <div class="column people">  
            <div class="content">     
                <img src="../img/article/article5.jpg" alt="Car" style="width:100%">    
                <h4>1. What is Donation? Are you sure you know? Lets Dig in! </h4>   
    <p>Find out on the real definition of the most widely word.</p>
        <button class="button button2"><a href="article7.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
            </div> 

        </div> 
        <div class="column people">   
            <div class="content">  
                <img src="../img/article/article5.jpg" alt="Car" style="width:100%">   
                <h4>2. Summary of Donation: COVID-19 Help to Doctors</h4>   
    <p> Learn more about the last assistance given to fight the pandemics!</p>
        <button class="button button2"><a href="article8.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
            </div>  

        </div> 
        <div class="column people">    
            <div class="content">  
                <img src="../img/article/article5.jpg" alt="Car" style="width:100%">   
                <h4>3. Donation: Homeless during Winter - The Reality of 2021</h4>   
    <p>Winter is here! What are the ways you may help to warm this coldness? </p>
        <button class="button button2"><a href="article9.aspx" style="text-decoration:none; color: white;"> Find Out More!</a></button>
            </div> 

        </div>
        <!-- END GRID -->   
    </div>
    <!-- END MAIN --> 
    <br /> <br /> <br />     
    <div > 
            <center>
                <button class="btn" style="text-align:center;"><a href="HomePage.aspx" style="text-decoration: none; color: red;">Register for More Articles! &nbsp;<i class="fas fa-arrow-right"></i></a></button>
            </center>
        </div>
   <br /><br /> 
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
