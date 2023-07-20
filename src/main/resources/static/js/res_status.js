//달력설정
$('.datetime').daterangepicker({
    "locale": {
        "format": "YYYY년MM월DD일",
        "separator": " ~ ",
        "applyLabel": "확인",
        "cancelLabel": "취소",
        "fromLabel": "From",
        "toLabel": "To",
        "customRangeLabel": "Custom",
        "weekLabel": "W",
        "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
        "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    },
    // showDropdowns: true, 년월 선택 
    "startDate": new Date(),
    "endDate": new Date(),
    "drops": "down"
}, function (start, end, label) {

});

//인원수 설정
function count(type){

var number = Number($("#result").val());
var number1 = Number($("#result-1").val());

const target =document.getElementsByClassName('.adult-btn');
const target1 =document.getElementsByClassName('.child-btn');

if(type === 'decrease') {
    if( number > 1 ){
    document.querySelector("#result").value= number- 1;
    number=number-1; //변수 값 변경 후 재선언
    } else if (number <0 ){
    target.disabled =true;
}
}else if(type === 'increase')  {
    if( number < 4){
    document.querySelector("#result").value=number+ 1;
    number=number+1;
    } else if ( number > 4) {
        target.disabled =true;
    }
}    
if(type === 'minus') {
    if( number1 > 0){
        document.querySelector("#result-1").value= number1- 1;
        number1 = number1-1;
    } else if (number1 <0 ){
        target1.disabled =true;
    }
}else if(type === 'plus')  {
    if( number1 <3 ){
        document.querySelector("#result-1").value=number1+ 1;
        number1 = number1+1;
    } else if ( number1 > 3 ) {
        target1.disabled =true;
    }
}
if(number + number1 < 4){
    document.getElementsByClassName('plus-btn')[0].removeAttribute("disabled");
    document.getElementsByClassName('plus-btn')[1].removeAttribute("disabled");

}else{
    document.getElementsByClassName('plus-btn')[0].setAttribute('disabled',true);
    document.getElementsByClassName('plus-btn')[1].setAttribute('disabled',true);
}
 }
//요일수 표시
$('.applyBtn').on('click', function (){
	let startdate = document.getElementsByClassName(".start-btn").innerText;
	
	console.log(startdate);

})
 
 
 
 
 