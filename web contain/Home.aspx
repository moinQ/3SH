<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

   <head>
      <meta charset="UTF-8">
     <!-- circle icon  -->      
      <link rel="apple-touch-icon" sizes="57x57" href="img/circle/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="img/circle/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/circle/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="img/circle/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/circle/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="img/circle/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="img/circle/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="img/circle/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="img/circle/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="img/circle/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="img/circle/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="img/circle/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="img/circle/favicon-16x16.png">
<link rel="manifest" href="img/circle/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="img/circle/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- end of icon -->
      
      <meta name="viewport" content="width=device-width" />
      <title>3SH Home</title>
      <link rel="stylesheet" href="style/components.css">
      <link rel="stylesheet" href="style/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="style/template-style.css">
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="script/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="script/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="script/modernizr.js"></script>
      <script type="text/javascript" src="script/responsee.js"></script>
      <script type="text/javascript" src="script/template-scripts.js"></script> 
                 
   </head>
   <body class="size-1140">
      <!-- TOP NAV WITH LOGO -->
      <header>
         <div id="topbar">
            <div class="line">
               <div class="s-12 m-6 l-6">
                  <p>CONTACT US: <strong>080 4400 0440</strong> </p>
               </div>
               <div class="s-12 m-6 l-6">
                  <div class="social right">
                     <p><strong>3sectorhelp.contact@gmail.com</strong></p>
                  </div>
               </div>
            </div>  
         </div> 
         <nav>
            <div class="line">
               <div class="s-12 l-2">
                  <p class="logo">3<strong>SH</strong></p>
               </div>
               <div class="top-nav s-12 l-10">
                  <p class="nav-text">Custom menu text</p>
                  <ul class="right">
                     <li class="active-item"><a href="#carousel">Home</a></li>
                     <li><a href="#features">Features</a></li>
                     <li><a href="#about-us">About Us</a></li>
                     <li><a href="#our-work">Login</a></li>
                     <li><a href="#contact">Contact</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header>  
      <section>
         <!-- CAROUSEL --> 
         <div id="carousel">
            <div id="owl-demo" class="owl-carousel owl-theme"> 
               <div class="item">
                  <img src="img/first.jpg" alt="">
                  <div class="line"> 
                     <div class="text hide-s">
                        <div class="line"> 
                          <div class="prev-arrow hide-s hide-m">
                             <i class="icon-chevron_left"></i>
                          </div>
                          <div class="next-arrow hide-s hide-m">
                             <i class="icon-chevron_right"></i>
                          </div>
                        </div> 
                        <h2>We help a farmer</h2>
                        <p>A wider platform to sell your produce. <br/> We connect you to the manufacturers out there. </p>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <img src="img/second.jpg" alt="">
                  <div class="line">
                     <div class="text hide-s"> 
                        <div class="line"> 
                          <div class="prev-arrow hide-s hide-m">
                             <i class="icon-chevron_left"></i>
                          </div>
                          <div class="next-arrow hide-s hide-m">
                             <i class="icon-chevron_right"></i>
                          </div>
                        </div> 
                        <h2>We help a manufacturer</h2>
                        <p>You decide what you need! We help you get it!<br/> And sell what you manufacture!</p>
                     </div>
                  </div>
               </div>
               <div class="item">
                  <img src="img/third.jpg" alt="">
                  <div class="line">
                     <div class="text hide-s">
                        <div class="line"> 
                          <div class="prev-arrow hide-s hide-m">
                             <i class="icon-chevron_left"></i>
                          </div>
                          <div class="next-arrow hide-s hide-m">
                             <i class="icon-chevron_right"></i>
                          </div>
                        </div> 
                        <h2>We help a marketeer</h2>
                        <p>We help you get the products you need <br/> With uncompromised quality</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- FIRST BLOCK -->
         <div id="first-block">
            <div class="line">
              <h1>Welcome To The 3 Sector Help System</h1>
               <p>A platform for all the three sectors to join hands under a single roof</p> <div class="s-12 m-4 l-2 center"><a class="white-btn" href="info.aspx"><strong>Care For Some Facts?</strong></a></div>
            </div>
         </div>
         <!-- FEATURES -->
         <div id="features">
            <div class="line">
               <div class="margin">
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-tablet icon3x"></i>
                     <h2>Robust</h2>
                     <p><strong>Updated regularly</strong> keeping all your needs in mind. A strong and healthy system for efficient work experience.</p>
                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-isight icon3x"></i>
                     <h2>Security</h2>
                     <p>Your data is confidential and secure with us; And <strong>we are trustworthy!</strong></p>
                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-star icon3x"></i>
                     <h2>Effortless</h2>
                     <p>Important data is displayed and you are just some clicks away from your <strong>best work experience</strong>.</p>
                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-heart icon3x"></i>
                     <h2>Totally free</h2>
                     <p>You register, communicate, collaborate and contribute to each other's development. And guess what? <strong>It's totally free.</strong></p>
                  </div>
               </div>
            </div>
         </div>
         <!-- ABOUT US -->
         <div id="about-us">
            <div class="s-12 m-12 l-6 media-container">
               <a href="about.html"><img src="img/about.jpg" alt=""></a>
            </div>
            <article class="s-12 m-12 l-6">
               <h2>Ditch<br/> The<br/> Brokers</h2>
               <p>The Farmers, Manufacturers and Marketeers come together to undertake their respective activities without a broker here. and yes, if we are to be called as brokers? <br/>Then we don't charge.
               </p>
               <div class="about-us-icons">
                  <i class="icon-paperplane_ico"></i> <i class="icon-trophy"></i> <i class="icon-clock"></i>
               </div>
            </article>
         </div>
         <!-- OUR WORK -->
         <div id="our-work">
            <div class="line">
               <h2 class="section-title">Our Work</h2>
               <div class="tabs">
                  <div class="tab-item tab-active">
                    <a class="tab-label active-btn">LogIn</a>
                    <div class="tab-content">
                      <div class="margin">
                      <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="LoginF.aspx"><div class="our-work-text"><h4>Login as Farmer</h4><p></p></div><img src="img/por1.jpg" alt=""></a></div>
                        <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="LoginF.aspx"><div class="our-work-text"><h4>Login as Manufacturer</h4><p></p></div><img src="img/por4.jpg" alt=""></a></div>
                        <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="LoginF.aspx"><div class="our-work-text"><h4>Login as Marketeer</h4><p></p></div><img src="img/por6.jpg" alt=""></a></div>
                        <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="LoginF.aspx"><div class="our-work-text"><h4>Login as Field Agent</h4><p></p></div><img src="img/por3.jpg" alt=""></a></div>
                      </div>
                    </div>  
                  </div>
                  <div class="tab-item">
                    <a class="tab-label">Register</a>        
                    <div class="tab-content">
                      <div class="margin">
                        <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="RegFormar.aspx"><div class="our-work-text"><h4>Register as Farmer</h4><p></p></div><img src="img/por7.jpg" alt=""></a></div>
                        <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="RegManufacture.aspx"><div class="our-work-text"><h4>Register as Manufacturer</h4><p></p></div><img src="img/por5.jpg" alt=""></a></div>
                        <div class="s-12 m-6 l-3"><a class="our-work-container lightbox margin-bottom" href="RegMakter.aspx"><div class="our-work-text"><h4>Register as Marketeer</h4><p></p></div><img src="img/por1.jpg" alt=""></a></div>
                       
                      </div>
                    </div>  
                  </div>
               </div>
            </div>
         </div>         
         
                  <!-- SERVICES -->

          
         <!-- CONTACT -->
         <div id="contact">
            <div class="line">
               <h2 class="section-title">Contact Us</h2>
               <div class="margin">
                  <div class="s-12 m-12 l-3 hide-m hide-s margin-bottom right-align">
                    <img src="img/contact.jpg" alt="">
                  </div>
                  <div class="s-12 m-12 l-4 margin-bottom right-align">
                     <h3>MAQ Technologies Ltd.</h3>
                     <address>
                        <p><strong>Address:</strong> #100, 1km before Electronic City, Bengaluru-560100</p>
                        <p><strong>Country:</strong> Karnataka - India</p>
                        <p><strong>E-mail:</strong> info@cmvtech.com</p>
                     </address>
                     <br />
                     <h3>Social</h3>
                     <p><i class="icon-facebook icon"></i> <a href="http://www.theuselessweb.com/">The Web</a></p>
                     
                 
                  </div>
                  <div class="s-12 m-12 l-5">
                    <h3>Contact Form</h3>
                    <form class="customform" runat="server">
                      <div class="s-12"><input runat="server" name="email" placeholder="Your e-mail" title="Your e-mail" type="text" id="email" /></div>
                      <div class="s-12"><input runat="server" name="name" placeholder="Your name" title="Your name" type="text" id="name" /></div>
                      <div class="s-12"><textarea runat="server" placeholder="Your massage" name="message" rows="5" id="mssg"></textarea></div>
                      <div class="s-12 m-12 l-4">
                         <button class="color-btn" runat="server" onserverclick="Button1_Click">Submit Button</button></div></div>
                    </form>
                  </div>                
               </div>
            </div>
         </div>
         <!-- MAP -->
         <div id="map-block">  	  
            <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <div id="map"><a href="Home.aspx">Home.aspx</a></div>
    <script>
      function initMap() {
          var uluru = { lat: 12.954259, lng: 77.586685 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJGDdllJ7Jh8Z8dGqFZVLn4v-qt3Lu6oU&callback=initMap">
    </script>
  </body>
         </div>
      </section>
      <!-- FOOTER -->
      <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>Non-Copyright. But still the rights are reserved. </p>
               <p>The images are sourced from the internet but edited by us. </p>
            </div>
            <div class="s-12 l-6">
               <font class="right"  color="white">Design and codded <br> by Moin Alam Qureshi</font>  
            </div>
         </div>
      </footer>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
      <script type="text/javascript">
         jQuery(document).ready(function($) {
            var theme_slider = $("#owl-demo");
            $("#owl-demo").owlCarousel({
                navigation: false,
                slideSpeed: 300,
                paginationSpeed: 400,
                autoPlay: 6000,
                addClassActive: true,
             // transitionStyle: "fade",
                singleItem: true
            });
            $("#owl-demo2").owlCarousel({
                slideSpeed: 300,
                autoPlay: true,
                navigation: true,
                navigationText: ["&#xf007","&#xf006"],
                pagination: false,
                singleItem: true
            });
        
            // Custom Navigation Events
            $(".next-arrow").click(function() {
                theme_slider.trigger('owl.next');
            })
            $(".prev-arrow").click(function() {
                theme_slider.trigger('owl.prev');
            })     
        }); 
      </script>
   </body>
</html>


