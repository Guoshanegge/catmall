$(function(){
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=9&ps=8",
    type:"get",
    dataType:"json",
    success: function(result) {
      console.log(result)
      html=""
      result.forEach((val,index,arr)=>{
        html+=`
        <a href="" title="点击查看布偶猫百科">
                            <img src=${val.pic} alt="">
                            <div class="buouname"> 布偶猫</div>
                            <div class="cankaoprice">                 参考价格：         <span>6000-20000</span> </div>
                            <div></div>
                        </a>`
      })
      document.getElementById("pinzhongleft1").innerHTML=html

    }
  })
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=10&ps=8",
    type:"get",
    dataType:"json",
    success: function(result) {
      console.log(result)
      html=""
      result.forEach((val,index,arr)=>{
        html+=`
        <a href="" title="点击查看布偶猫百科">
                            <img src=${val.pic} alt="">
                            <div class="buouname"> 布偶猫</div>
                            <div class="cankaoprice">                 参考价格：         <span>6000-20000</span> </div>
                            <div></div>
                        </a>`
      })
      document.getElementById("pinzhongleft2").innerHTML=html

    }
})
$.ajax({
  url:"http://127.0.0.1:8080/titles?pno=11&ps=8",
  type:"get",
  dataType:"json",
  success: function(result) {
    console.log(result)
    html=""
    result.forEach((val,index,arr)=>{
      html+=`
      <a href="" title="点击查看布偶猫百科">
                          <img src=${val.pic} alt="">
                          <div class="buouname"> 布偶猫</div>
                          <div class="cankaoprice">                 参考价格：         <span>6000-20000</span> </div>
                          <div></div>
                      </a>`
    })
    document.getElementById("pinzhongleft1").innerHTML=html

  }
})
$.ajax({
  url:"http://127.0.0.1:8080/titles?pno=12&ps=5",
  type:"get",
  dataType:"json",
  success: function(result) {
    console.log(result)
    html=""
    result.forEach((val,index,arr)=>{
      html+=`
      <div class="maoright1" id="pinzhongright">
      <a href="">
       <div class="img">
           <div class="dj">顶荐</div>
           <img src=${val.pic} alt="">
       </div>
       <div class="redline"></div>
       <div class="rightmaocon">
           <div class="rightmaocon1">
              <span>精品推荐:</span>
              正规CFA认证猫舍 品质保证 证书齐全 专业指导

           </div>
           <div class="rightmaocon2">
               <span>价格:
                   <span>1100元/只</span>
                </span>
           </div>			
       </div>
       <div class="beitemaoshe">
           <span>喵小小</span>
           <img src="../picture/picture3/picture/maomi_vip.jpg" alt="">
       </div>
      </a>
    </div>   `
    })
    document.getElementById("pinzhongright").innerHTML=html

  }
})

})
