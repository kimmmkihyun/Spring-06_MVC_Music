<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
music \ result1.jsp <br>


title : ${ title }<br>   <!-- null -->
title2 : ${ param.title }<br>
title3 : ${ param.mtitle }<br>  <!-- null -->
title4 : ${ mtitle }<br>
title5 : ${ requestScope.mtitle }<br>
title6 : <%=request.getAttribute("mtitle") %><br>


singer : <%=request.getParameter("singer") %><br>


price : ${ param.price }<br>