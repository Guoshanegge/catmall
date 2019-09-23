$(function(){
 $("input").blur(function(e){
 if(e.target.id=="cname"){
  var c=$("#cname")[0].value;
 var reg1=/^[0-9a-z]{3,12}$/;
 if(!reg1.test(c)){
  $(".cname_span").css({display:"inline-block"})
 
 }else{
  $(".cname_span").css({display:"none"}) 
 }
 return;
} if(e.target.id=="cpwd"){
    var p=$("#cpwd")[0].value;
    var reg2=/^[0-9a-z]{6,12}$/;
    if(!reg2.test(p)){
      $(".cpwd_span").css({display:"inline-block"})
  
    }else{
      $(".cpwd_span").css({display:"none"})
    }
    return;
} if(e.target.id=="upwd"){
  var u=$("#upwd")[0].value;
  var p=$("#cpwd")[0].value;
  
  if(u!=p){
    $(".upwd_span").css({display:"inline-block"})
 
  }else{
    $(".upwd_span").css({display:"none"})
  }
  return;

} if(e.target.id=="phone"){
  var t=$("#phone")[0].value;
 
  var reg3=/^[1][3-9][0-9]{9}$/;
  if(!reg3.test(t)){
    $(".tele_span").css({display:"inline-block"})
    
  }else{
    $(".tele_span").css({display:"none"})
  }
  return;
} if(e.target.id=="email"){
  var m=$("#email")[0].value;
  var reg4=/^[0-9a-z]{2,6}$/;
  if(!reg4.test(m)){
    $(".email_span").css({display:"inline-block"})
   
  }else{
    $(".email_span").css({display:"none"})
  }
  return;
}else{
 
 $("#reg").click(function(){
   var cname=$("#cname")[0]
   var $cname=cname.value;
   console.log($cname);
   var cpwd=$("#cpwd")[0];
   var $cpwd=cpwd.value;
   var upwd=$("#upwd")[0];
   var $upwd=upwd.value;
   console.log($upwd);
   if($upwd!=$cpwd){
     alert("请重新输入");
     return;
   }else{
   $.ajax({
    url:`http://127.0.0.1:8080/reg?cname=${$cname}&cpwd=${$cpwd}`,
    type:"get",
    dataType:"json",
    success:function(result){
      if(result.code==-1){
        console.log("重新输入")
      }else{
        alert("注册成功")
      }
      
      
    }
   })
  }
 })
}
})
})
 