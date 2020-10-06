<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
music \ result2.jsp <br>

title : ${ title } <br> <!-- null -->
title2 : ${ param.title } <br>
title3 : ${ requestScope.title } <br> <!-- null -->
title4 : <%=request.getParameter("title") %> <br>
  

singer : ${ param.singer } <br>

price : ${ param.price } <br>
