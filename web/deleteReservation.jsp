<%@page import="Controller.CancelDAO"%>
<jsp:useBean id="d" class="Model.Cancel"></jsp:useBean>
<jsp:setProperty property="*" name="d"/>

<%
    int i = CancelDAO.delete(d);
    response.sendRedirect("cancel.jsp");
%>