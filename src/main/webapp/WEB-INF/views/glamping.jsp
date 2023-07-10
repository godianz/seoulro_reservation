<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<link rel="stylesheet" href="../css/glamping.css">
</head>
<body>
    <div class="container">
        <div class="top"> 
            A구역: 글램핑존
            <button class="ResvBtn">예약하기</button>
        </div>

        <div class="row">
        <div class="column">
            글램핑 소개란
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