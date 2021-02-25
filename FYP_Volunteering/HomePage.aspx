<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FYP_Volunteering.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="CSS Styles - Main/homePage.css" /> 
    <link rel="stylesheet" href="CSS Styles - Main/global.css" />

    <!--------------------------- Owl Carousel ----------------------------------> 
    <link rel="stylesheet" href="CSS Styles - Main/owl.carousel.min.css" /> 
    <link rel="stylesheet" href="CSS Styles - Main/owl.theme.default.min.css" /> 
    
    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="CSS Styles - Main/aos.css">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <!----------------------------- Main Home Page Section ------------------------------>

      <!----------------------------Main Body Section--------------->
    <main>
        <!--Site Title-->
        <section class="site-title"> 
            <div class="site-background" data-aos="fade-up" data-aos-delay="100">
                <h1>VOLUNTEER BORDERLESS</h1>
                <i><h4> “The best way to find yourself is to lose yourself in the service of others.”</h4></i>
                <b><h4>- Ghandi</h4></b>
                <button class="btn" style="width:300px;"><a href="Volunteer_Opportunity/Main_Page.aspx"> START NOW </a></button>
            </div>
        </section>
        <!-----x----Site Title-----x------>
        <!---------------- Blog Carousel -------------->
        <section>
            <div class="blog">
                <div class="container"> 
                    <h1 style="color: #3f4954; background-color: white;">Reviewed By Our Volunteers:</h1>
                   <div class="owl-carousel owl-theme blog-post">
                        <div class="blog-content" data-aos="fade-right" data-aos-delay="200">
                            <img src="img/volunteers/v1.jpg" alt="post1">
                            <div class="blog-title">
                                <h3>Review: Alicia Keys - Student</h3>
                                <p>Herriot-Watt, KL</p>
                                <p>Program: "Global Home", 22 Aug 2020</p>
                                <button class="btn btn-blog"><a href="Articles_Main/article1.aspx">Explore!</a></button>
                                <span> 2 minutes </span>
                            </div>
                        </div>
                        <div class="blog-content" data-aos="fade-in" data-aos-delay="200">
                            <img src="img/volunteers/v7.jpg" alt="post2">
                            <div class="blog-title">
                                <h3>Help: "Mayo" - Clinic</h3>
                                <p>Gov. Hospital, Sabah</p>
                                <p>Donation: "COVID-19", 16 Nov 2020</p>
                                <button class="btn btn-blog"><a href="Articles_Main/review4.aspx"> Explore!</a></button>
                                <span> 5 minutes </span>
                            </div>
                        </div>
                        <div class="blog-content" data-aos="fade-right" data-aos-delay="200">
                            <img src="img/volunteers/v4.png" alt="post3">
                            <div class="blog-title">
                                <h3>Review: Student Volunteers</h3>
                                <p>APU, KL</p>
                                <p>Program: "Hand2Hand", 1 Sep 2020</p>
                                <button class="btn btn-blog"><a href="Articles_Main/review3.aspx"> Explore!</a></button>
                                <span> 2 minutes </span>
                            </div>
                        </div>
                       <div class="blog-content" data-aos="fade-left" data-aos-delay="200">
                            <img src="img/volunteers/v8.jpg" alt="post4">
                            <div class="blog-title">
                                <h3>Review: Eblan Abdul - Blogger</h3>
                                <p>Bristol, UK</p>
                                <p>Program: "Animals", 19 Feb 2020</p>
                                <button class="btn btn-blog"><a href="Articles_Main/review2.aspx"> Explore!</a></button>
                                <span> 2 minutes </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        <script> 
                            $(document).ready(function () {
                                $('.owl-carousel').owlCarousel();
                            });
                        </script>
        </section>
        <br /> <br /> 
    <!---------------- Blog Carousel -------------->
    <!---------------- Site Content --------------->
    <section class="container">
        <div class="site-content">
            <div class="posts">
                    <h1 style="color: #3f4954;">Explore Available Volunteering Opportunities: </h1>
                <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                    <div class="post-image">
                        <div>
                            <img src="img/V_Opportunity/vol_op1.jpg" class="img" alt="volunteer">
                        </div>
                        <div class="post-info flex-row">
                            <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;Admin</span>
                            <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;November 16, 2020</span>
                            <span>15 Comments</span>
                        </div>
                    </div>
                    <div class="post-title"> 
                        <a href="#">Volunteers Needed: Join Us Virtually!</a>
                        <p>The world has changed a lot in recent months and the future still holds a whole
                            lot of uncertainty. While the future may remain unknown, take advantage of this 
                            time to explore virtually and research where to volunteer abroad (or maybe even volunteer online!).</p>
                            <button class="btn post-btn"><a href="Volunteer_Opportunity/virtual1.aspx" 
                                style="text-decoration:none; color: black; font-size:15px;"> Read More &nbsp;<i class="fas fa-arrow-right"></i></a></button>
                    </div>
                </div>
                <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                    <div class="post-image">
                        <div>
                            <img src="img/V_Opportunity/covid.jpg" class="img" alt="blog2">
                        </div>
                        <div class="post-info flex-row">
                            <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;Admin</span>
                            <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;November 16, 2020</span>
                            <span>15 Comments</span>
                        </div>
                    </div>
                    <div class="post-title"> 
                        <a href="#">COVID-19: Help The Heros Today!</a>
                        <p>So, where are volunteers needed? Let’s start with Kenya. If you’re East Africa dreamin’,
                            why not arrive in a magical land and brace yourself for a big experience—one that will
                            humble you, force you outside of your comfort zone, and embrace you as you grow?</p>
                             <button class="btn post-btn"><a href="Volunteer_Opportunity/donation2.aspx" style="text-decoration:none; font-size:15px;color: black;"> Read More &nbsp;<i class="fas fa-arrow-right"></i></a></button>
                    </div>
                </div>
                <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
                    <div class="post-image">
                        <div>
                            <img src="img/V_Opportunity/safety_rules.jpg" class="img" alt="pet">
                        </div>
                        <div class="post-info flex-row">
                            <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;Admin</span>
                            <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;November 16, 2020</span>
                            <span>15 Comments</span>
                        </div>
                    </div>
                    <div class="post-title"> 
                        <a href="#">Safety: Volunteering During Epidemics</a>
                        <p>In this new world of COVID-19, volunteers are needed more than ever.
                            You may be one of the many people inspired by recent events to turn
                            your communal acts of kindness into formal volunteering with an organisation.
                            But if you’re considering volunteering, you may be feeling uncertain about 
                            the health and safety of yourself and others.</p>
                             <button class="btn post-btn"><a href="Volunteer_Opportunity/abroad1.aspx" style="text-decoration:none; color: black;font-size:15px;"> Read More &nbsp;<i class="fas fa-arrow-right"></i></a></button>
                    </div>
                </div>
                <div class="pagination flex-row">
                    <a href="#"><i class="fas fa-chevron-left"></i></a>
                    <a href="#" class="pages">1</a>
                    <a href="#" class="pages">2</a>
                    <a href="#" class="pages">3</a>
                    <a href="#"><i class="fas fa-chevron-right"></i></a>
                </div>
                <br /> <br /> 
                <br />
            </div>
            <aside class="sidebar">
                <div class="category">
                    <h2 style="color: #3f4954;">Categories</h2>
                    <ul class="category-list">
                        <li class="list-items" data-aos="fade-left" data-aos-delay="100">
                            <a href="#">Why Volunteering is Important?</a>
                            <span>(05)</span>
                        </li>
                        <li class="list-items" data-aos="fade-left" data-aos-delay="200">
                            <a href="#">Become Our Patreon!</a>
                            <span>(05)</span>
                        </li>
                        <li class="list-items" data-aos="fade-left" data-aos-delay="300">
                            <a href="#">APU x Student Volunteering Organization</a>
                            <span>(05)</span>
                        </li>
                        <li class="list-items" data-aos="fade-left" data-aos-delay="400">
                            <a href="#">Interesting Facts</a>
                            <span>(05)</span>
                        </li>
                        <li class="list-items" data-aos="fade-left" data-aos-delay="500">
                            <a href="#">Real Life Stories</a>
                            <span>(05)</span>
                        </li>
                    </ul>
                </div>
                <div class="popular-post">
                    <h2 style="color: #3f4954;">Popular Posts</h2>
                    <div class="post-content">
                        <div class="post-content" data-aos="flip-up" data-aos-delay="200">
                            <div class="post-image">
                                <div>
                                    <img src="./img/pets.png" class="img" alt="blog2">
                                </div>
                                <div class="post-info flex-row">
                                    <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;November 16, 2020</span>
                                    <span>15 Comments</span>
                                </div>
                            </div>
                            <div class="post-title"> 
                                <a href="#">Adopt a friend: Student Volunteering Organization x PetMY collaboration</a>
                            </div>
                        </div>
                    </div>
                    <div class="post-content" data-aos="flip-up" data-aos-delay="300">
                        <div class="post-content">
                            <div class="post-image">
                                <div>
                                    <img src="./img/pets.png" class="img" alt="blog2">
                                </div>
                                <div class="post-info flex-row">
                                    <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;November 16, 2020</span>
                                    <span>15 Comments</span>
                                </div>
                            </div>
                            <div class="post-title"> 
                                <a href="#">Adopt a friend: Student Volunteering Organization x PetMY collaboration</a>
                            </div>
                        </div>
                    </div>
                    <div class="post-content" data-aos="flip-up" data-aos-delay="400">
                        <div class="post-content">
                            <div class="post-image">
                                <div>
                                    <img src="./img/pets.png" class="img" alt="blog2">
                                </div>
                                <div class="post-info flex-row">
                                    <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;&nbsp;November 16, 2020</span>
                                    <span>15 Comments</span>
                                </div>
                            </div>
                            <div class="post-title"> 
                                <a href="#">Adopt a friend: Student Volunteering Organization x PetMY collaboration</a>
                            </div>
                        </div>
                    </div>
                    <div class="newsletter" data-aos="fade-up" data-aos-delay="300"> 
                        <h2 style="color: #3f4954;">Newsletter:</h2>
                        <div class="form-element">
                            <input type="text" class="input-element" placeholder="Email" />
                            <button class="btn form-btn">Subscribe!</button>
                        </div>
                    </div>
                    <div class="popular-tags">
                        <h2 style="color: #3f4954;">Popular Tags:</h2>
                        <div class="tags flex-row">
                            <span class="tag" data-aos="flip-up" data-aos-delay="100">Asia: Volunteering</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="200">Europe: Volunteering</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="300">Digital Nomad</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="400">Real Stories</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="500">COVID-19</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="600">Volunteering Safety</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="700">Articles</span>
                            <span class="tag" data-aos="flip-up" data-aos-delay="800">APU</span>
                        </div>
                    </div>
                </div>
            </aside>
        </div>
        <script> $(function () {
                AOS.init();
                 });
        </script>
    </section>
    <!---------------- Site END Content --------------->   
    </main>


    <!-- JQuery File --> 
    <script src="JavaScript_Main/Jquery3.5.1.min.js"></script>
    <!--------------------------- Owl Carousel JavaScript----------------------------------> 
    <script src="JavaScript_Main/owl.carousel.min.js"></script>
    <!-- ------------ AOS js Library  ------------------------- -->
    <script src="JavaScript_Main/aos.js"></script>
    <!-- Java Script File --> 
    <script src="JavaScript_Main/main.js"></script>

</asp:Content>
