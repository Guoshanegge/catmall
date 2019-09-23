
$(".denglu1").mouseover(function(){
   
    $(".denglu").css("display","block");
})
$(".denglu1").mouseleave(function(){
   
   $(".denglu").css("display","none");
})
$("#quanguo").mouseover(function(){
    $("span").css("display","none");
    $(".privince").css("display","block")
})

$(".privince").mouseleave(function(){
    $("span").css("display","none");
    $(".privince").css("display","none")
});
