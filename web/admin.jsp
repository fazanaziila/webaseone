<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/admin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <title>Admin WeBaseOne</title>
</head>
<body>
    <!-- header -->
    <header>
        <nav class="navbar">
            <a href="admin.jsp">submitted</a>
            <a href="cancel.jsp">cancel</a>
            <a href="manageUser.jsp">admin</a>

        </nav>
        <div class="icons">
            <i class="fas fa-bars" id="menu-bars"></i>
            <a href="home.html" class="bx bxs-log-out-circle"></a>
        </div>
    </header>
    
    <!-- <%@page import="Controller.ReservationDAO,Model.Reservation,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     -->
    <section class="process" id="process">
        <h3 class="sub-heading">submitted</h3>
        <h1 class="heading">Submitted Data</h1>
        
        <!-- Form Search -->
        
        <form action="admin.jsp" method="get" class="search-form" style="margin-left: auto; margin-bottom: 2rem;">
            <input type="text" name="search" placeholder="Search by Name, Phone, Email">
            <button type="submit">Search</button>
        </form>
        
        <!-- <%
        String search = request.getParameter("search");
        List<Reservation> list;
        if (search != null && !search.trim().isEmpty()) {
            list = ReservationDAO.searchRecords(search);
        } else {
            list = ReservationDAO.getAllRecords();
        }
        request.setAttribute("list", list);
        %> -->
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>People</th>
                <th>Date</th>
                <th>Edit</th>
                <th>Cancel</th>
            </tr>
            <c:forEach items="${list}" var="rs">
                <tr>
                    <td data-label="Id">${rs.getId_reservation()}</td>
                    <td data-label="Name">${rs.getFirst_name()}</td>
                    <td data-label="Phone">${rs.getPhone()}</td>
                    <td data-label="Email">${rs.getEmail()}</td>
                    <td data-label="People">${rs.getPeople()}</td>
                    <td data-label="Date">${rs.getDate()}</td>
                    <td data-label="Edit"><a href="editReservationform.jsp?id_reservation=${rs.getId_reservation()}"><i class='fas fa-edit' style='font-size:1.5rem'></i></a></td>
                    <td data-label="Done"><a href="moveToDone.jsp?id_reservation=${rs.getId_reservation()}"><i class='fas fa-check' style='font-size:1.5rem'></i></a></td>
                </tr>
            </c:forEach>
        </table>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="webaseone.js"></script>
</body>
</html>
