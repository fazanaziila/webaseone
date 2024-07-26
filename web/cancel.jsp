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

<section>
    <h3 class="sub-heading">Cancelled Data</h3>
    <h1 class="heading">Cancelled</h1>
<%@page import="Controller.CancelDAO,Model.Cancel,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    List<Cancel> list = CancelDAO.getAllRecordsdone();
    request.setAttribute("list", list);
%>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>People</th>
        <th>Date</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="d">
        <tr>
            <td data-label="Id">${d.getId_reservation()}</td>
            <td data-label="Name">${d.getFirst_name()}</td>
            <td data-label="Phone">${d.getPhone()}</td>
            <td data-label="Email">${d.getEmail()}</td>
            <td data-label="People">${d.getPeople()}</td>
            <td data-label="Date">${d.getReservation_date()}</td>
            <td data-label="Time">${d.getReservation_time()}</td>
            <td data-label="Edit"><a href="deleteReservation.jsp?id_reservation=${d.getId_reservation()}"><i class='fas fa-trash' style='font-size:1.5rem'></i></a></td>
        </tr>
    </c:forEach>
</table>
</section>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="webaseone.js"></script>
</body>
</html>
