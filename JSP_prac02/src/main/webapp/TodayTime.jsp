<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		GregorianCalendar now = new GregorianCalendar();
		out.println("현재일은 " + String.format("%TY 년 %Tm 월 %Td 일", now, now, now) + " 입니다.<br>");
		out.println("현재 시각은 " + String.format("%TH 시 %TM 분 %TS 초", now, now, now) + " 입니다.");
	%>
	<!-- 단독 실행하지 않고 include 할 경우 html이 필요 없음! -->