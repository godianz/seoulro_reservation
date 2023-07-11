<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script type="text/javascript" defer src="../js/res_status.js"></script>
<link rel="stylesheet" href="../css/res_status.css">

</head>
<body>
<div class="container">
        <div class="header">
            <div class="row-header">
                <div>주소</div>
                <div>연락처</div> 
                <div>결제방법</div>
            </div>
            <div class="row-table">
                <div>행복특별시 행복구 행복동</div>
                <div>010-0000-0000</div>
                <div>카드결제/현금결제</div>
            </div>
        </div>

        <div class="period">
            <div class="title_period">숙박기간</div>
            <div class="date">
                <img src="../img/calendar.png" class="calendar_icon">
                <input type="text" name="datetime" class="datetime" value=""/>
                <div class="consecutive">박</div>
            </div>
        </div>
    <div class="title_room">객실선택</div>
        <div class="room-container">

        <div class="img-room">
            <img src="../img/camping.jpg" width="250px">
        </div>

        <div class="explain-box">
            <div class="now">
                <div class="now-btn">예약가능</div>
            </div>

            <div class="room-box">    
                <div class="select_room">카라반</div>
            </div>

            <div class="detail-box">
                <div class="detail">기준2명, 최대4명</div>
            </div>
        </div>   

    <div class="people-box">
        <div class="people">
        <div class="adult">성인</div>
        <div class="adult-btn" id="add-btn">
            <button class="minus-btn" id="btn" onclick='count("decrease")'>-</button>
            <input type="text" id="result" value="1">
            <button class="plus-btn"  id="btn" onclick='count("increase")'>+</button>
        </div>
        </div>
        <div class="people-1">
        <div class="child">아동</div>
        <div class="child-btn" id="add-btn">
            <button class="minus-btn" id="btn"  onclick='count("minus")'>-</button>
            <input type="text" id="result-1" value="0">
            <button class="plus-btn" id="btn"  onclick='count("plus")'>+</button>
        </div>
    </div>
    </div>

        <div class="price-box">
            <button class="select-btn">선택</button>
            <div class="price">원</div>
        </div>
        
        <div>
        </div>

        </div>    
    </div>
</body>
</html>