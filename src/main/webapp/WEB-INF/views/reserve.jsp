<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<link rel="stylesheet" href="../css/res.css">
<script type="text/javascript" defer src="../js/res.js"></script>
</head>
<body>
<div class="calendar">
        <div class="header">
                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                <div class="year-month"></div>
                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button> 
        </div> 

            <div class="today"> 오늘날짜 :
            <c:set var="ymd" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${ymd}" pattern="yyyy년 MM월 dd일" /></div>

        <div class="reserve">
            <div class="row">
                <div class="circle"></div>
                <div class="explain">예약가능</div>
            </div>

            <div class="row">
                <div class="circle ing"></div>
                <div class="explain">예약진행</div>
            </div>

            <div class="row">
                <div class="circle complete"></div>
                <div class="explain">예약완료</div>
            </div>
        </div>

        <div class="main">
            <div class="days">
                <div class="day">일</div>
                <div class="day">월</div>
                <div class="day">화</div>
                <div class="day">수</div>
                <div class="day">목</div>
                <div class="day">금</div>
                <div class="day">토</div>
            </div>
            <div class="dates">
            </div>
        </div>
    </div>
</body>
</html>