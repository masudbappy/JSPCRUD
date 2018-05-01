<%--
  Created by IntelliJ IDEA.
  User: bappy
  Date: 5/1/2018
  Time: 7:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="dao.UserDao"%>
<jsp:useBean id="u" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    UserDao.delete(u);
    response.sendRedirect("viewusers.jsp");
%>
