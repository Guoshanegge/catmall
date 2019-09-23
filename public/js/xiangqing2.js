$(function(){
  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=8&&ps=12",
   type:"get",
   dataType:"json",
   success: function(result) {
console.log(result)
     var html="";
     result.forEach((val,index,arr)=>{
       html+=`
      
       <img src=${val.pic} alt="">
        
       <span class="xiangqingbordertitle">精品推荐：
         <span>${val.title}</span>
       </span>
    
     <div>
       <span class="xiangqingbordertitle1">价格
         <span>${val.price}元/只</span>
       </span>
     </div>
      `
     })
     document.getElementById("xiangqing2right").innerHTML=html;
    }
  })

  $.ajax({
    url:"http://127.0.0.1:8080/titles?pno=17&&ps=4",
    type:"get",
    dataType:"json",
    success:function(result){
      var html="";
      result.forEach((val,index,arr)=>{
        html+=`
        <a class="sanloutupian"href="">
                      <img src=${val.pic} alt="">
                      <div>${val.title}</div>
                      <div><span class="xiangqingbordertitle1">价格
                          <span>${val.price}元/只</span>
                        </span>
                      </div>
                    </a>
        
        `
      })
      document.getElementById("xiangqing2weini").innerHTML=html;
    }
  })
 
})