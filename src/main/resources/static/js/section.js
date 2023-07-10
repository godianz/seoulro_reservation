/* 휠 기능 차단 */
window.addEventListener("wheel", function(e){
    e.preventDefault(); },{
    passive : false
});

var $html = $("html");

 var page = 1;
 var lastPage = $(".section").length;

 
$html.animate({scrollTop:0});        /* 페이지 실행 시 첫 페이지 시작 기본값 */

$(window).on("wheel", function(e){
 if($html.is(":animated")) return;   /* query.is => animated true 휠 애니메이션을 리턴 */
 if(e.originalEvent.deltaY > 0){     /* deltaY:휠 이동량  */
     if(page == lastPage) return;    /* 끝까지 내렸을 때 return; */
     page++;
    }else if(e.originalEvent.deltaY < 0){ 
     if(page == 1) return;           /* 올렸을 때 return; */
     page--;
 }

 var posTop = (page-1) * $(window).height(); /* Top */
 $html.animate({scrollTop:posTop});          /* 섹션이동 */
});