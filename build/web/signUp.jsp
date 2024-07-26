<%@page import="Controller.ManageDAO"%>
<jsp:useBean id="sg" class="Model.SignUp"></jsp:useBean>
<jsp:setProperty property="*" name="sg"/>

<%
    int i = ManageDAO.save(sg);
    if(i > 0){
        response.sendRedirect("signupSuccess.jsp");
    }else{
        response.sendRedirect("signupError.jsp");
    }
%>
