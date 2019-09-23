$(function(){
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=14&ps=8",
    type:"get",
    dataType:"json",
    success: function(result) {
      
      var html="";
      result.forEach((val,index,arr)=>{
         html+=`
         <a class="tuijiana1"href="" >
    <div><img src=${val.pic} alt=""></div>
    <div class="tuijianname">${val.title}</div>
  </a>
         `

      })
      document.getElementById("xiangqingtu").innerHTML=html
    }
  }),
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=15&ps=5",
    type:"get",
    dataType:"json",
    success: function(result) {
      console.log(result)
      var html="";
      result.forEach((val,index,arr)=>{
         html+=`
         <a href="" >
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
                        <span>元/只</span>
                     </span>
                </div>			
            </div>
            <div class="beitemaoshe">
                <span></span>
                <img src="../picture/picture3/picture/maomi_vip.jpg" alt="">
            </div>
         </a>
         `

      })
      document.getElementById("xiangqingmaoright").innerHTML=html
    }
  })


})