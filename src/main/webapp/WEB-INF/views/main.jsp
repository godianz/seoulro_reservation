<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- jquery -->
  <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap" rel="stylesheet">
  
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/index.css">

<body>
    <div class="bg">
        <div class="container">
            <div class="title">
                <span class="words" style="color: #e64d39">are you ready</span>
                <span class="words" style="color:#2b9f5e">to travel</span>
                <span class="words" style="color: #e2bf4c">to camping?</span>
            </div>
        </div>

        <div class="moving" id="moving">
            <button class="yes">yes!!</button><img class="bus" src="img/touring.png">
        </div>
        
    </div>
 </body>
 
 <script>

$('.moving').on('click',function(){
    location.href ='/section'
})

</script>   

