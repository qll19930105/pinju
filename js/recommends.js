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
                    <a href="javascript:;"><img src="${recommends[i].img}"></a>
                    <p>
                        <a href="javascript:;" class="fl">${recommends[i].name}</a>
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
        pno--;
        console.log(pno)
        if (pno == 2) {
            $(this).addClass("disabled")
                // $("li.active").removeClass("active");
            loadMore(pno);
            return;
        } else {
            $(this).removeClass("disabled");
            $("li.active").removeClass("active").prev().addClass("active");
            loadMore(pno);
        }
    }
    if (i == 9) {
        pno++;
        if (pno == 7) {
            $(this).addClass("disabled")
                // $("li.active").removeClass("active");
            loadMore(pno);
            return;
        } else {
            $(this).removeClass("disabled");
            $("li.active").removeClass("active").next().addClass("active");
            loadMore(pno);
        }

    }
})