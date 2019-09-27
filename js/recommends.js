$(function() {
    $("#nav #art").removeClass("hov");
    $("#nav #recommends").addClass("hov");
})

function loadMore(pno) {
    $.ajax({
        type: "get",
        dataType: "json",
        url: "http://127.0.0.1:8080/recommends?pno=" + pno,
        success: function(result) {
            var html = "";
            var recommends = result;
            for (var i = 0; i < recommends.length; i++) {
                html += ` <li>
                    <a href="/artdetail.html?pid=${recommends[i].pid}">
                       <img src="${recommends[i].img}">
                    </a>
                    <p>
                        <a href="/artdetail.html?pid=${recommends[i].pid}" class="fl">
                            ${recommends[i].name}
                        </a>
                        <span class="fr">￥${recommends[i].price}</span>
                    </p>
                    </li>`
            }
            $("#recommends_imgs").html(html);
        }
    })
}

var pno = 1;
loadMore(pno);
console.log($("#recommends_pagination>li"))

$("#recommends_pagination").on("click", "li", function() {
    var i = $(this).index();

    if (i >= 1 && i <= 8) {
        // console.log(i)
        if (i == 1) {
            $("#prev").addClass("disabled");
        } else {
            $("#prev").removeClass("disabled");
        }
        if (i == 8) {
            $("#next").addClass("disabled");
        } else {
            $("#next").removeClass("disabled");
        }
        pno = i;
        $(this).addClass("active").siblings().removeClass("active");
        loadMore(pno);
    }
    if (i == 0) {
        // 点击上一张按钮 active的li会变成前一个，当$(this).next().hasClass("active")为true时，$(this).addClass("disabled");return;   否则 $(this).removeClass("disabled")，pno-- li.active class转移，加载数据，并显示到页面上，再次对$(this).next().hasClass("active")进行判断
        console.log($(this).next().hasClass("active"))
        pno--;
        if ($(this).next().hasClass("active")) {
            pno = 1;
            $(this).addClass("disabled");
            $("#next").removeClass("disabled")
            return;
        } else {
            // if (pno > 1) {
            $(this).removeClass("disabled");
            // }
            $("li.active").removeClass("active").prev().addClass("active");
            loadMore(pno);
            if ($(this).next().hasClass("active")) {
                $(this).addClass("disabled");
                $("#next").removeClass("disabled")
                return;
            }
        }
    }

    if (i == 9) {
        pno++;
        if ($(this).prev().hasClass("active")) {
            pno = 8;
            $(this).addClass("disabled");
            $("#prev").removeClass("disabled")
            return;
        } else {
            // if (pno > 1) {
            $(this).removeClass("disabled");
            // }
            $("li.active").removeClass("active").next().addClass("active");
            loadMore(pno);
            if ($(this).prev().hasClass("active")) {
                $(this).addClass("disabled");
                $("#prev").removeClass("disabled")
                return;
            }
        }
    }
})