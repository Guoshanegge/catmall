//app.js 服务器端项目
//1:下载第三方模块 
//express/express-session/cors/mysql
//2:将第三方模块引入到当前程序中
const express= require("express");
const session = require("express-session");
const cors = require("cors");
const mysql = require("mysql");
//const product=require("./router/route/productrouter.js")
//3:创建数据库连接池
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   connectionLimit:20,
   database:"lovelycat"
})

//4:创建web服务器监听 8080 端口
var server = express();
server.listen(8080);
//5:处理跨域 cors 
//5.1：配置允许访问程序地址(脚手架)
//     http://127.0.0.1:5050  (ok)
//     http://localhost:5050
//5.2:每请求是否验证true
server.use(cors({
  origin:["http://127.0.0.1:5500","http://localhost:5500"],
  credentials:true
}))
server.use(express.static('public'));

//功能一:完成用户登录
//启动服务器app.js/启动数据库
//打开浏览器
//http://127.0.0.1:8088/login?cname=abc&cpwd=123456
//http://127.0.0.1:8080/login?uname=tom&upwd=122

server.get("/login",(req,res)=>{
  //6.1:接收网页传递数据 用户名和密码
  var t = req.query.cname;
  var p = req.query.cpwd;
  //6.2:创建sql
  var sql = "SELECT uid FROM cat_user_login";
  sql+=" WHERE cname = ? AND cpwd = ?";
  //6.3:执行sql语句并且获取返回结果
  pool.query(sql,[t,p],(err,result)=>{
   //6.4:判断登录是否成功
   if(err)throw err;
   //6.5:将结果返回网页
   if(result.length==0){
     res.send({code:-1,msg:"用户名或密码有误"})
   }else{
     //?
     //?
     res.send({code:1,msg:"登录成功"});
   }
  });
})

//注册页面
server.get("/reg",(req,res)=>{
  //6.1:接收网页传递数据 用户名和密码

  var $cname= req.query.cname;
  console.log($cname);
  var $pwd=req.query.cpwd;
  //6.2:创建sql
  var sql = "SELECT cname FROM cat_user_login";
  sql+=" WHERE cname = ?";
  //6.3:执行sql语句并且获取返回结果
  pool.query(sql,[$cname,$pwd],(err,result)=>{
   //6.4:判断登录是否成功
   if(err)throw err;
   //6.5:将结果返回网页
   if(result.length==0){
   var sqll=`INSERT INTO cat_user_login (cname,cpwd) VALUES (?,?)`;
   pool.query(sqll,[$cname,$pwd],(err,result)=>{
     if(err) throw err;
    
     if(result.affected==0){
       res.send({code:-2,msg:"注册失败"})
     }else{
       res.send({code:1,msg:"注册成功"})
     }
   })

   }else{
     //?
     //?
     res.send({code:-1,msg:"用户名已被占用"});
   }
  });
})



server.get('/index',(req,res)=>{
 
  var sql="SELECT pic,title,price,href from cat_index_product";
  pool.query(sql,(err,result)=>{
      if(err) throw err;
      res.send(result)
  })
  
})

server.get('/titles',(req,res)=>{
  var pno = req.query.pno;
  var ps  = req.query.ps;
 
 ps = parseInt(ps);
 if(!pno){
  pno = 1;
}
if(!ps){
  ps = 8;
} 

var offset = (pno-1)*ps;
  var sql="SELECT cid,pic,title,price,href,subtitle from cat_index_titles LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result)=>{
    if (err) throw err;
    res.send(result);
   
  })
})
   


    

