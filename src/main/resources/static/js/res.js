const date = new Date(); //현재 시간 반환 console.log("date:" + date);

const renderCalendar = () => {

const viewYear = date.getFullYear(); //주어진 날짜의 현지 시간 기준 연도를 반환
const viewMonth = date.getMonth(); //Date 객체의 월 값을 현지 시간에 맞춰 반환합니다. 월은 0부터 시작합니다.
const viewDate = date.getDate(); 

document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth+1} 월`;

const prevLast = new Date(viewYear, viewMonth, 0); //console.log("저번달 마지막 날 : " +prevLast);
const prevDate = prevLast.getDate(); //console.log("저번달 마지막 일 : " + prevDate);
const prevDay = prevLast.getDay(); // console.log("저번달 마지막 요일 : " + prevDay); 일요일(0)부터 시작

const thisLast = new Date(viewYear, viewMonth + 1, 0); //console.log("이번 마지막 날 : " + thisLast);
const thisDate = thisLast.getDate(); //console.log("이번달 마지막 일 : " + thisDate);
const thisDay = thisLast.getDay(); //console.log("이번달 마지막 요일:" + thisDay);

//날짜들을 배열에 담기
const prevDates = []; //이전달                                       
const thisDates = [...Array(thisDate + 1).keys()].slice(1); //index를 키 값으로 가지는 객체 반환
                                                            //slice(1):0제외하고 1부터 배열의 시작부터 끝가지 반환 
const nextDates = []; //다음달

if (prevDay !== 6) {                           //저번달 마지막 일이 토요일이 아니면 
    for (let i = 0; i < prevDay +1 ; i++) {    //이번달 처음 요일 전까지 반복문을 돌려 
prevDates.unshift(prevDate- i);                //배열 맨 앞에 이전달(n-1) 실행
}                                          
  }
//console.log(prevDates);                       //array 내장 객체
                                                //unshift: 배열 맨 앞에 새로운 값 추가, push:배열 맨 끝에 새로운 값 추가
                                                //shift:배열의 맨 앞에 값 제거, pop:배열의 맨 끝에 값 제거

  for (let i = 1; i < 7 - thisDay; i++) {       
    nextDates.push(i);                          //배열 맨 끝에 다음달 실행
  }
//console.log(nextDates);


const dates = prevDates.concat(thisDates, nextDates); //concat:인자로 주어진 배열이나 값들을 기존 배열에 합쳐서 새 배열 반환

dates.forEach((date, i) => {       
  dates[i] = `<div class="container">
                <div class="date">${date}</div>
                  <div class="currnet">
                    <div class="situation">
                    <div class="circle_situation"></div>
                    <div class="section">오토캠핑(A구역)</div>
                    </div>
                    <div class="situation">
                    <div class="circle_situation"></div>
                    <div class="section">글램핑(B구역)</div>
                    </div>  
                    <div class="situation">
                    <div class="circle_situation"></div>
                    <div class="section">카라반(C구역)</div>
                    </div>      
                  </div>  
              </div>`;//for문으로 i만큼 날짜 하나씩 자동 증가 
}) 

document.querySelector('.dates').innerHTML = dates.join(''); //배열의 모든 요소를 연결해 하나의 문자열 join();=> ","
}

renderCalendar();

const prevMonth = () => {
    date.setDate(1);
    date.setMonth(date.getMonth() - 1);
    renderCalendar();
  }
  
  const nextMonth = () => {
    date.setDate(1);
    date.setMonth(date.getMonth() + 1);
    renderCalendar();
  }

$('.situation').on('click', function(){
  location.href='/res_status'
})