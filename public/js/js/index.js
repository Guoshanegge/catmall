//删除index.html结尾的<script src="js/ajax.js"
//console.log("1");
$(function(){
 // console.log("1");
  

  $.ajax({
    url:"http://127.0.0.1:8080/index",
    type:"get",
    dataType:"json",
    success:function(result){
      //console.log(result)
      
      // console.log(2222);
       var html="";
     result.forEach((val,index,arr) => {
         html+=`
         <li>
         <a href="">
         
         <img src=${val.pic} alt="">
         <div class="dingjian">顶荐</div>
         <div class="wenduji"></div><div class="heiti"><span class="jingpintuijian">精品推荐:</span>${val.title}</div>
         <div class="jiage">价格：<span>${val.price}元/只</span></div>
         <div class="jiewei"><span>${val.href}</span><img src="picture/maomi_vip.jpg" alt=""></div> </a></li>`
         
         document.getElementById("p1").innerHTML=html;
         
       });
    }
  }),
  
//$(function(){
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=1&&ps=8",
    type:"get",
    dataType:"json",
    success:function(result){
     
      var ret=result.slice(8,16);
   
      var result=result.slice(0,8);
    
      var html="";
      result.forEach((val,index,arr) => {
       html+=`
       <li><a href="">
       <div class="imgtu"><img src=${val.pic} alt=""> </div>
        <div class="imgtext">
全国连锁猫舍 价格优惠 购猫签订协议 &nbsp; 包纯种健					</div>
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
<img src="picture/maomi_vip.jpg" alt="">
</div>
<div class="redu">
<span>热度：</span><span class="red">60</span>
</div>
</div>
</a></li>
       
       `
      document.getElementById("buou").innerHTML=html;

    });
  }
}),

//$(function(){
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=2&&ps=8",
    type:"get",
    dataType:"json",
    success:function(result){
      //var ret=result.slice(8,16);
      var ret=result;
     
      var html="";
      ret.forEach((val,index,arr) => {
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
                        <img src="picture/maomi_vip.jpg" alt="">
                    </div>
                    <div class="redu">
                        <span>热度：</span><span class="red">60</span>
                    </div>
                </div>
            </a></li>
       `
      document.getElementById("er").innerHTML=html;

    });
  }
})
//});
//$(function(){
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=3&&ps=8",
    type:"get",
    dataType:"json",
    success:function(result){
     // var ret=result.slice(16,24);
     
     var ret=result;
      var html="";
      ret.forEach((val,index,arr) => {
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
                        <img src="picture/maomi_vip.jpg" alt="">
                    </div>
                    <div class="redu">
                        <span>热度：</span><span class="red">60</span>
                    </div>
                </div>
            </a></li>
       `
      document.getElementById("san").innerHTML=html;

    });
  }
})
$("#picu").click(e=>{
    e.preventDefault();
     if(e.target.nodeName=="A"){
       location.href="html/xiangqing2.html"
     }
   })
});


