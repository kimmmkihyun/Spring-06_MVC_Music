<%@page import="com.spring.ex.MusicBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
music \ result3.jsp <br>

title : ${ m.title }<br>
title2 : ${ musicBean.title }<br>
title3 : ${ musicBean.getTitle() }<br>
title4 : <%=((MusicBean)request.getAttribute("musicBean")).getTitle() %><br>
title5 : ${ requestScope.musicBean.title }<br><br>

singer : ${ musicBean.singer } <br>
singer2 : ${ musicBean.getSinger() } <br>
singer3: ${ requestScope.musicBean.singer } <br>
singer4: <%=((MusicBean)request.getAttribute("musicBean")).getSinger() %><br><br>

price : ${ musicBean.price } <br>
price2 : ${ musicBean.getPrice() } <br>
price3 : ${ requestScope.musicBean.price } <br><br>
