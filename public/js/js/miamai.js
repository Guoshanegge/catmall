$(function(){
    //console.log(333)
    $.ajax({
        url:"http://127.0.0.1:8080/titles?pno=6&ps=5",
        type:"get",
        dataType:"json",
        success:function(result){
         
          
        
          var html="";
          result.forEach((val,index,arr) => {
           html+=`<a href="">
           <img src=${val.pic} alt="">
           <div class="dingjian">顶荐</div>
           <div class="wenduji"></div>
           <div class="heiti">
               <span class="jingpintuijian">精品推荐:</span>${val.title}
           </div>
           <div class="jiage">价格：<span>${val.price}元/只</span></div>
           <div class="jiewei"><span>${val.href}</span><img src="../picture/maomi_vip.jpg" alt=""></div>
       </a>`
        })
        document.getElementById("maimaiul").innerHTML=html
       }
     }),


  $.ajax({
  url:"http://127.0.0.1:8080/titles?pno=4&&ps=8",
  type:"get",
  dataType:"json",
 
  success: function(result) {
   // console.log(result)
   html="";

   result.forEach((val,index,arr) => {
     html+=`
     <li><a href="">
     <div class="imgtu"><img src=${val.pic} alt=""> </div>
     <div class="imgtext">
         ${val.title}				</div>
     <div>
         <div class="jiageleft">
         <span>价格:</span>
         <span class="red">${val.price}元/只</span>
     </div>
     <div class="jiageright">
         <span>地区</span>
         <span>重庆/重庆市</span>
     </div>
     </div>
     <div>
         <div class="maoshe">
             <span>${val.href}</span>
             <img src="../picture/maomi_vip.jpg" alt="">
         </div>
         <div class="redu">
             <span>热度：</span><span class="red">60</span>
         </div>
     </div>
   </a>
</li>
     
     `
   })
   document.getElementById("yilou1").innerHTML=html
  }
}),
  $.ajax({
  url:"http://127.0.0.1:8080/titles?pno=5&&ps=8",
  type:"get",
  dataType:"json",
  success: function(result) {
   console.log(result)
    html="";
   result.forEach((val,index,arr) => {
     html+=`
     <li><a href="">
     <div class="imgtu"><img src=${val.pic} alt=""> </div>
     <div class="imgtext">
         ${val.title}				</div>
     <div>
         <div class="jiageleft">
         <span>价格:</span>
         <span class="red">${val.price}元/只</span>
     </div>
     <div class="jiageright">
         <span>地区</span>
         <span>重庆/重庆市</span>
     </div>
     </div>
     <div>
         <div class="maoshe">
             <span>${val.href}</span>
             <img src="../picture/maomi_vip.jpg" alt="">
         </div>
         <div class="redu">
             <span>热度：</span><span class="red">60</span>
         </div>
     </div>
   </a>
</li>
     
     `
     
})
document.getElementById("erlou2").innerHTML=html
     
  }
}),
$.ajax({
  url:"http://127.0.0.1:8080/titles?pno=6&&ps=8",
  type:"get",
  dataType:"json",
  success: function(result) {
  //  console.log(result)
   html="";
   result.forEach((val,index,arr) => {
     html+=`
     <li><a href="">
     <div class="imgtu"><img src=${val.pic} alt=""> </div>
     <div class="imgtext">
         ${val.title}				</div>
     <div>
         <div class="jiageleft">
         <span>价格:</span>
         <span class="red">${val.price}元/只</span>
     </div>
     <div class="jiageright">
         <span>地区</span>
         <span>重庆/重庆市</span>
     </div>
     </div>
     <div>
         <div class="maoshe">
             <span>${val.href}</span>
             <img src="../picture/maomi_vip.jpg" alt="">
         </div>
         <div class="redu">
             <span>热度：</span><span class="red">60</span>
         </div>
     </div>
   </a>
</li>
     
     `
    
})
document.getElementById("sanlou3").innerHTML=html
  }
})



})