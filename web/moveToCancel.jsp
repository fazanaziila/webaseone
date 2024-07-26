<%@page import="Controller.CancelDAO"%>
<%@page import="java.io.*"%>
<%
    String idStr = request.getParameter("id_reservation");
    int id = Integer.parseInt(idStr);
    int status = CancelDAO.moveToCancel(id);

    if (status > 0) {
        response.sendRedirect("admin.jsp");
    } else {
        out.println("Failed to move the reservation.");
    }
%>
