const express = require("express");
const bodyParser = require("body-parser");
const user = require("./routes/user.js");
const cors = require("cors");
const session = require("express-session");
const pool = require("./pool.js");
const mysql = require("mysql");

var app = express();
app.listen(8080);

app.use(cors({
    origin: ["http://127.0.0.1:5501", "http://127.0.0.1:5050"],
    credentials: true
}))
app.use(session({
    secret: "128位字符串", //#安全字符串
    resave: true, //#每次请求保存数据 
    saveUninitialized: true //#保存初始化数据
}));


app.use(bodyParser.urlencoded({
    extended: false
}));


app.use(express.static("public"));
app.use("/user", user);

//获取每日推荐产品 
app.get("/rec_daily", (req, res) => {
        var sql = "SELECT * FROM pj_rec_daily";
        pool.query(sql, [], (err, result) => {
            if (err) throw err;
            res.send(result);
        })
    })
    //获取人气推荐产品 
app.get("/rec_pop", (req, res) => {
    var sql = "SELECT * FROM pj_rec_pop";
    pool.query(sql, [], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// 获取全部产品信息 根据携带的参数设置分页
app.get("/recommends", (req, res) => {
    var pno = req.query.pno;
    var ps = req.query.pageSize;
    if (!pno) {
        pno = 1;
    }
    if (!ps) {
        ps = 20;
    }
    var sql = "SELECT * FROM pj_products LIMIT ?,?";
    var offset = (pno - 1) * ps;
    ps = parseInt(ps);
    pool.query(sql, [offset, ps], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
});

// 根据接送到的pid查询对应得产品信息
app.get("/artdetail", (req, res) => {
    var pid = req.query.pid;
    pool.query("SELECT * FROM pj_products WHERE pid=?", [pid], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})