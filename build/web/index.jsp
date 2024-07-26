
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/webaseone.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <title>WeBaseOne</title>
</head>
<body>
    <header>
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#details">Details</a>
            <a href="#reservation">Reservation</a>
        </nav>

        <div class="icons">
            <i class="fas fa-bars" id="menu-bars"></i>
            <a href="loginForm.jsp" class='bx bx-user'></a>
        </div>
    </header>

    <section class="home" id="home">
        <div class="content">
            <h3> ZEROBASEONE 1st Anniversary Cafe Event</h3>
            <h5>by Faza Naziila</h5>
            <h4>2024.07.13 (SAT) - 2024.07.14 (SUN)
                <br>
                CEP CCIT
            </h4>
            <a href="#reservation" class="btn">Reservation</a>

        </div>

    </section>
    
    <section class="about" id="about">
        <h3 class="sub-heading">ZB1's 1st Anniversary</h3>
        <h1 class="heading">Details</h4>
        
        <div class="row">
            <div class="image">
                <img src="image/about.jpeg" alt="">
            </div>
            <div class="content">
                <p>The first ZEROBASEONE's Anniversary held by Faza Naziila
                    <br>
                    all ZEROSEs are invited to the special occasion that will hold many fun activites such as sing along, 
                    rewatching ZB1's content, DIY cute ZB1 charm/chardholder, etc. The event will be held for 2 days, 
                    and a month for the cup sleeve event. ZEROSE can join anytime. 
                    Grab a drink and enjoy the day with fellow ZEROSE!    
                </p> 
            </div>
        </div>
    </section>

    <section class="details" id="details">
        <h1 class="heading">Details</h1>
        <h3 class="sub-heading">Saturday, 13th July 2024 - SUnday, 14th July 2024</h3>
        <span>10 AM - 8 PM</span>
        <span>Rp 70.000,00</span>
       

        <div class="content">
                <div class="item">
                    <h3>What Will You Get?</h3>
                    <ul>
                        <li>Special Menu</li>
                        <li>ZB1 limited goodies</li>
                        <li>ZEROSEs Moots</li>            
                    <ul>
                </div>
        
                <div class="item">
                    <h3>What Will We Do?</h3>
                    <ul>
                        <li>Rewatch Anything ZB1 related</li>
                        <li>Sing Along ZB1's Songs</li>
                        <li>DIY charms/cardholder</li>
                        <li>having fun with ZEROSE friends!</li>
                    </ul>
                </div>

            

        </div>
        
        <div class="location">
            <div class="image">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.2466148040485!2d106.8223387099629!3d-6.362120062210375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ec18c3e8e717%3A0x9f2283e905986b55!2sCEP%20CCIT%20FTUI!5e0!3m2!1sid!2sid!4v1721836062587!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>        
            </div>

            <div class="desc">
                <h3>Where We Can Be Found</h3>
                <p>Gedung Enginering Center Lt. 1, FTUI Kampus Baru UI Depok, Jalan Prof. DR. Ir R. Roosseno, Kukusan, Kecamatan Beji, Kota Depok, Jawa Barat 16425.</p>
            </div>
        </div>

    </section>

    <section class="reservation" id="reservation">
        <h1 class="heading">Reservation</h1>
        <h3 class="sub-heading">Have Fun with Us</h3>

        <form id= "reservationForm" action="addReservation.jsp" method="post" onsubmit="return validateForm()">
            <div class="inputbox">
                <div class="input">
                    <label>Your Name</label>
                    <input type="text" name="name" placeholder="enter your name here" id="first-input">
                </div>


                <div class="input">
                    <label>Your Phone Number</label>
                    <input type="number" name="phone" placeholder="enter ur phone number. ex: 081234567890 or 0812345678901" id="number-input">
                </div>

                <div class="input">
                    <label>Your Email</label>
                    <input type="email" name="email" placeholder="enter your email here" id="email-input">
                </div>

                <div class="input">
                    <label>How Many People</label>
                    <input type="number" name="people" placeholder="enter how much people will come here" id="people-input">
                </div>
                
                <div class="input">
                    <label>Date</label>
                    <input type="date" name="date" id="datePicker" placeholder="select date">
                </div>
            </div>
            <input type="submit" value="book now" class="btn" id="booknow">
        </form> 
    </section>


    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>Location</h3>
                <a href="#">Depok</a>
            </div>

            <div class="box">
                <h3>Links</h3>
                <a href="#home">Home</a>
                <a href="#about">About</a>
                <a href="#details">Details</a>
                <a href="#reservation">Reservtaion</a>
            </div>

            <div class="box">
                <h3>Contact Info</h3>
                <a href="#">+62 0000-1111-2222</a>
                <a href="#">+62 5555-4444-3333</a>
                <a href="#">webaseeone@gmail.com</a>
            </div>


        </div>

        <div class="credit">Project 4 2024,  By Faza Naziila Dias Shanti</div>
      </section>

      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
      <script src="webaseone.js"></script>
</body>

</html>