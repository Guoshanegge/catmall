$(function(){
  
  
  
 $.ajax({
   url:"http://127.0.0.1:8080/titles?pno=7&&ps=8",
   type:"get",
   dataType:"json",
   success: function(result) {

     var html="";
     result.forEach((val,index,arr)=>{
       html+=`
       <a class="acon"href="">
       <div class="tupianleft">
       <img src=${val.pic} alt="">
   </div>
   <div class="tupianyou">
       <div class="title">						${val.title}						</div>
       <div class="timer">
           
               2019-08-19	
               <span>
                   浏览量：4120
               </span>							
       </div>
       <div class="xian"></div>
       <div class="textcon">
           
${val.subtitle}
       </div>
      
   </div>
   <div class="clear"></div>
   </a>
       `


     })
     document.getElementById("zixunyi").innerHTML=html
   }

 }),
 $.ajax({
   url:"http://127.0.0.1:8080/titles?pno=8&&ps=8",
   type:"get",
   dataType:"json",
   success:function(result){
    html="";
    var rest=result.splice(0,7)
    rest.forEach((val,index,arr)=>{
     html+=`
     <a class="acon"href="">
     <div class="tupianleft">
     <img src=${val.pic} alt="">
 </div>
 <div class="tupianyou">
     <div class="title">						${val.title}			</div>
     <div class="timer">
         
             2019-08-19	
             <span>
                 浏览量：4120
             </span>							
     </div>
     <div class="xian"></div>
     <div class="textcon">
         
${val.subtitle}          
     </div>
    
 </div>
 <div class="clear"></div>
 </a>
     
     `
    })
  
    document.getElementById("zixuner").innerHTML=html
 }
  })
   

  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=7&ps=6",
    type:"get",
    dataType:"json",
    success: function(result) {
      console.log(result)
      var html="";
      result.forEach((val,index,arr)=>{
        html+=` <a href="">
        <div class="img">
            <div class="dj">顶荐</div>
            <img src=${val.pic} alt="">
        </div>
        <div class="redline"></div>
        <div class="rightmaocon">
            <div class="rightmaocon1">
               <span>精品推荐:</span>
               ${val.title}
            </div>
            <div class="rightmaocon2">
                <span>价格:
                    <span>${val.price}元/只</span>
                 </span>
            </div>			
        </div>
        <div class="beitemaoshe">
            <span>${val.href}</span>
            <img src="../picture/picture3/picture/maomi_vip.jpg" alt="">
        </div>
       </a>`



})

document.getElementById("zixunright").innerHTML=html
}
 })

})
  