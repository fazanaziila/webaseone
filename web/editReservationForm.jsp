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
    

    <section class="reservation" id="reservation">
        <h1 class="heading">Edit</h1>
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