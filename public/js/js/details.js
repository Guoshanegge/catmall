$(function(){
  //获得当前地址栏中的lid值
  var cid=location.search.split("=")[1];
  console.log(cid);
  if(cid!==undefined){
    //向服务端接口发请求，并携带参数
    $.ajax({
      url:"http://localhost:8080/details",
      type:"get",
      data://"lid="+lid,
           //{lid:lid}
           {cid},
      dataType:"json",
      success:function(result){
        console.log(result);
        var {product,specs}=result;
        var {title,subtitle,price,promise}=product;
        $("#ptitle").html(title);
        $("#p_sub_title").html(title);
        $("#pprice").html("¥"+price.toFixed(2));
        $("#ppromise").html(promise);
        var html="";
        //遍历specs中每个规格对象
        for(var sp of specs){
          html+=`<a class="btn btn-sm btn-outline-secondary ${sp.lid==lid?'active':''}" href="product_details.html?lid=${sp.lid}">${sp.spec}</a>`
        }
        $("#specs").html(html);
      }
    })
  }
})