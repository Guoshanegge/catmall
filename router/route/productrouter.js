const express=require("express");
var router=express.router;


router.get('/index',(req,res)=>{
    var sql="SELECT pic,title,price,href from cat_index_product";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
    
})





module.exports=router;