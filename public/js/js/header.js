//在js文件夹下创建header.js文件
//专门负责请求页头的html片段和页头的css文件

$(function(){
 
  $(`<link rel="stylesheet" href="../css/head_index.css">`).appendTo("head");
 
 
  $.ajax({
    url:"http://127.0.0.1:8080/html/headindex.html",
    type:"get",
    datatype:"json",
    success: function(result) {
      $(result).replaceAll("#header");
     
       
      
      console.log($("#mail"))
     
      var reg=/inddex.html$/
      if(reg.test($(window)[0].location.href)){
        
        $("#mai1").click((e)=>{
          e.preventDefault();
          //console.log(222)
          location.href="html/maimai.html"
       // window.open("http://127.0.0.1:5500/mingc/public/html/maimai.html","_blank")
        })
        $("#zixun1").click((e)=>{
          e.preventDefault();
          location.href="html/zixun.html"
          //window.open("http://127.0.0.1:5500/xiangmu/mingc/public/html/zixun.html","_blank")
        })
        $("#pinzhong1").click((e)=>{
          e.preventDefault();
          location.href="html/pinzhong.html"
          //window.open("http://127.0.0.1:5500/xiangmu/mingc/public/html/pinzhong.html","_blank")
        })
        $("#xiangqing").click((e)=>{
          e.preventDefault();
          location.href="html/xiangqing.html"
        })
        $("#denglu").click((e)=>{
          e.preventDefault();
          location.href="html/user_login.html"
        })
        $("#zhuce").click((e)=>{
          e.preventDefault();
          location.href="html/user_reg.html"
        })
        $("#shouye").click((e)=>{
          e.preventDefault();
          location.href="inddex.html"
        })
        $("#png")[0].src="picture/logo.png"
        console.log($("#png"))
       
      }else{
        $("#mai1").click((e)=>{
          e.preventDefault();
          //console.log(222)
          location.href="../html/maimai.html"
       // window.open("http://127.0.0.1:5500/mingc/public/html/maimai.html","_blank")
        })
        $("#zixun1").click((e)=>{
          e.preventDefault();
          location.href="../html/zixun.html"
          //window.open("http://127.0.0.1:5500/xiangmu/mingc/public/html/zixun.html","_blank")
        })
        $("#pinzhong1").click((e)=>{
          e.preventDefault();
          location.href="../html/pinzhong.html"
          //window.open("http://127.0.0.1:5500/xiangmu/mingc/public/html/pinzhong.html","_blank")
        })
        $("#denglu").click((e)=>{
          e.preventDefault();
          location.href="../html/user_login.html"
        })
        $("#zhuce").click((e)=>{
          e.preventDefault();
          location.href="../html/user_reg.html"
        })
        $("#xiangqing").click((e)=>{
          e.preventDefault();
          location.href="../html/xiangqing.html"
        })
        $("#shouye").click((e)=>{
          e.preventDefault();
          location.href="../inddex.html"
        })
      }
    }
  })

})
