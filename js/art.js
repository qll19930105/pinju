$(function() {
        $.ajax({
            type: "get",
            url: "http://127.0.0.1:8080/rec_daily",
            dataType: "json",
            success: function(result) {
                // console.log(result)
                var html = "";
                var mrtj = result;
                for (var i = 0; i < mrtj.length; i++) {
                    html += ` <li>
                <a href="/artdetail.html?pid=${i+1}"><img src="${mrtj[i].img}"></a>
                <p>
                    <a href="javascript:;" class="fl">${mrtj[i].name}</a>
                    <span class="fr">￥${mrtj[i].price}</span>
                </p>
            </li>`
                }
                $("#art_mrtj").html(html);
            }
        });
        $.ajax({
            type: "get",
            url: "http://127.0.0.1:8080/rec_pop",
            dataType: "json",
            success: function(result) {
                // console.log(result)
                var html = "";
                var rqtj = result;
                for (var i = 0; i < 8; i++) {
                    html += ` <li>
                <a href="/artdetail.html?pid=${9+i}"><img src="${rqtj[i].img}"></a>
                <p>
                    <a href="javascript:;" class="fl">${rqtj[i].name}</a>
                    <span class="fr">￥${rqtj[i].price}</span>
                </p>
            </li>`
                }
                $("#art_rqtj").html(html);
            }
        });

    })
    // var LIWIDTH = 930;
    // var LICOUNT = 3;
    // var n = 0;
    // var DURATION = 500;
    // var CANCLICK = true;
    // var allSpan=$("#art_idxs>span");
    // for(let i=0;i<allSpan.length;i++){
    //    $(allSpan[i]).on('click',function(x){
    //       var index=$(x.currentTarget).index();
    //       var p=index*(-LIWIDTH);
    //       $('#art_imgs').css({
    //        "marginLeft":p+'px'
    //       })
    //        n = index;  
    //        $(allSpan[i]).addClass('hov')
    //        .siblings('.hov').removeClass('hov')
    //   })

// }

// var timerId=setInterval(function(){
//   allSpan.eq(n%LICOUNT).trigger("click");
//   n+=1;
// },2000)
// $('#art_imgs').on('mouseenter',function(){
//   clearInterval(timerId)
// })

// $('#art_imgs').on('mouseleave',function(){
//   timerId =setInterval(function(){
//   allSpan.eq(n%LICOUNT).trigger('click') 
//   n+=1;
// },2000)
// })

//$("#art_idxs").on("click", "span", function() {
//    var t = $(this);
//    t.addClass("hov");
//    var nn = parseInt(t.attr("data-id"));
//    console.log(nn);
//    moveTo(nn);
//    t.siblings().removeClass("hov");
//})

//function moveTo(n) {
//    if (n == undefined) {
//        n = i+1;
//    }
//    if (i == 0) {
//        if (n > i) {
//            $("#art_imgs").addClass("transition");
//        } else {
//            $("#art_imgs").removeClass("transition");
//            $("#art_imgs").css("marginLeft", -LICOUNT * LIWIDTH + "px");
//            setTimeout(function() {
//                moveTo(LICOUNT - 1)
//            }, 100)
//            return;
//        }
//    }
//    i = n;
//    $("#art_idxs").children().removeClass("hov");
//    $("#art_imgs").css("marginLeft", -i * LIWIDTH + "px");
//    console.log( -i * LIWIDTH + "px");
//    if (i == LICOUNT) {
//        i = 0;
//        setTimeout(function() {
//            $("#art_imgs").removeClass("transition");
//            $("#art_imgs").css("marginLeft", 0);
//        }, DURATION)
//    }
//  $("#art_idxs").chirlden().addClass("hov");
//
//}

//var timer = setInterval(function() {
//    moveTo();
//}, 2000);