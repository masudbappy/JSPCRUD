<%--
  Created by IntelliJ IDEA.
  User: bappy
  Date: 5/1/2018
  Time: 6:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="dao.UserDao" %>
<jsp:useBean id="u" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i = UserDao.save(u);
    if (i > 0) {
        response.sendRedirect("adduser-success.jsp");
    } else {
        response.sendRedirect("adduser-error.jsp");
    }
%>