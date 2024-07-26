<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!--    link to CSS-->
    <link rel="stylesheet" href="CSS/login.css">
    
    <!-- link to sweetalert2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">

    <!-- box icon -->
    <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    
    <title>Login webaseone</title>
</head>
<body>

    <header>
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#home">About</a>
            <a href="#home">Details</a>
            <a href="#home">Reservation</a>        
        </nav>

        <div class="icons">
            <i class="fas fa-bars" id="menu-bars"></i>
           <a href="#" class='bx bx-user'></a>
        </div>
     </header>
     
    <section class="login-section">
        <div class="login-container">
            <div class="login-box">
                <div class="login-form">
                    <h2 class="heading">Login</h2>
                    <form action="LoginServlet" method="POST">
                        <div class="inputbox">
                            <label for="username">Username</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="inputbox">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn">Login</button>
                        <button class="btn" type="button" onclick="window.location.href='index.jsp';">Cancel</button>
                        <div class="sign-up">Don't have an account yet? <a href="signUp.html">SignUp Here</a></div>

                    </form>

                </div>
            </div>
        </div>
    </section>
</body>
</html>

