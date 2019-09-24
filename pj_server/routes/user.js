const express=require("express");
const pool=require("../pool.js");
const mysql=require("mysql");
var router=express.Router();
//注册页面数据调用模块
router.get("/v1/reg/info",(req,res)=>{
  var sql="select * from pj_site_info";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  });
});
//1.注册模块
router.post("/v1/reg",(req,res)=>{
  var obj=req.body;
  var sql="insert into pj_user set ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send("1");
    }else{
      res.send("0");
    }
  });
});
//2.注册的用户名验证是否重复 模块
router.get("/v1/reg/check/:uname",(req,res)=>{
  var $uname=req.params.uname;
  var sql="select * from pj_user where uname=?";
  pool.query(sql,[$uname],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send("1");
    }else{
      res.send("0");
    }
  });
});
//3.登录模块
router.get("/v1/login/:uname/:upwd",(req,res)=>{
  var $uname=req.params.uname;
  var $upwd=req.params.upwd;
  var sql="select * from pj_user where uname=? and upwd=?";
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send("1");
    }else{
      res.send("0");
    }
  });
});
//4.用户信息查询模块
router.get("/v1/list/:uname/:upwd",(req,res)=>{
  var $uname=req.params.uname;
  var $upwd=req.params.upwd;
  var sql="select * from pj_user where uname=? and upwd=?";
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send(result);
    }else{
      res.send("0");
    }
  });
});
//5.用户信息修改模块
router.put("/v1/update",(req,res)=>{
  var obj=req.body;
  var sql="update pj_user set ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err)throw err;
    if(result.affectedRows>0){
      res.send("1");
    }else{
      res.send("0");
    }
  });
});






module.exports=router;