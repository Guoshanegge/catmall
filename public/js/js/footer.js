$(function(){
 
 
  $.ajax({
    url:"http://127.0.0.1:8080/html/foot_index.html",
    type:"get",
    datatype:"json",
    success: function(result) {
    
      $(result).replaceAll("#footer");

      var reg= reg=/inddex.html$/
      if(reg.test($(window)[0].location.href)){
        $("#footerpng")[0].src="picture/logo.png"
        $("#footerpng2")[0].src="picture/foot_link3.png"
       $("#footerpng2")[0].style.top="-3px"
        
        $(`<link rel="stylesheet" href="css/foot_index.css">`).appendTo("head");

      }else{
        $(`<link rel="stylesheet" href="../css/foot_index.css">`).appendTo("head");

      }
   
     
       
    }
  })
})