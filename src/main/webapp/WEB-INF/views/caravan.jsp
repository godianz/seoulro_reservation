<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<link rel="stylesheet" href="../css/caravan.css">
</head>
<body>
    <div class="container">
        <div class="top"> 
            B구역: 카라반
            <button class="ResvBtn">예약하기</button>
        </div>

        <div class="row">
        <div class="column">
            카라반 소개란
        </div>
        <div class="column">
            소개란2
        </div>
    </div>
    </div>
        <script>
        $('.ResvBtn').on('click',function(){
           location.href='/reserve';
        })
    </script>
</body>
</html>