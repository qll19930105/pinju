$(function() {
    // 获取浏览器地址栏商品pid的值，然后发送ajax请求 获取对应商品信息
    var pid = window.location.search.split("=")[1];
    console.log(pid);
    $.ajax({
        type: "get",
        dataType: "json",
        url: "http://127.0.0.1:8080/artdetail?pid=" + pid,
        success: function(result) {
            console.log(result);
        }
    })
})