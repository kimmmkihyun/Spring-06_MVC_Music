<%@page import="com.spring.ex.MusicBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
music \ result4.jsp<br>

title : ${ m.title }<br>
title2 : ${ mb.title }<br>
title3 : ${ mb.getTitle() }<br>
title4 : ${ requestScope.mb.title }<br>
title5 : <%=((MusicBean)request.getAttribute("mb")).getTitle() %><br><br>

singer : ${ mb.singer } <br>
singer2 : ${ mb.getSinger() } <br>
singer3: ${ requestScope.mb.singer } <br><br>

price : ${ mb.price } <br>
price2 : ${ mb.getPrice() } <br>
price3 : ${ requestScope.mb.price } <br>
price4 : <%=((MusicBean)request.getAttribute("mb")).getPrice() %><br><br>