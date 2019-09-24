// 1L 每日推荐图片滚动
var arrowLeft = document.getElementById("arrow_left");
var arrowRight = document.getElementById("arrow_right");
var ulImgs1 = document.getElementById("daily_imgs");
var i1 = 0;
var LIWIDTH1 = 316;

arrowRight.onclick = function() {
    move(1);
}
arrowLeft.onclick = function() {
    move(-1);
}

function move(n) {
    i1 += n;
    if (i1 == 5) {
        i1 = 0;
        ulImgs1.style.marginLeft = 0;
        return;
    } else if (i1 == -1) {
        i1 = 4;
        ulImgs1.style.marginLeft = -i1 * LIWIDTH1 + "px";
        return;
    } else {
        ulImgs1.style.marginLeft = -i1 * LIWIDTH1 + "px";
    }
}

// 2L 人气推荐轮播图
var i2 = 0;
var LIWIDTH2 = 318;
var DURTION2 = 500;
var LICOUNT2 = 3;
var ulImgs2 = document.getElementById("rqtj_images");

var ulIdxs2 = document.getElementById("rqtj_slidenum");
var lis2 = ulIdxs2.children;

function moveTo2(to) {
    if (to == undefined) {
        to = i2 + 1;
    }
    if (i2 == 0) {
        if (to > i2) {
            ulImgs2.className = "transition";
        } else {
            ulImgs2.className = "";
            ulImgs2.style.marginLeft = -LIWIDTH2 * LICOUNT2 + "px";
            setTimeout(function() {
                moveTo2(LICOUNT2 - 1);
            }, 100);
            return;
        }
    }
    i2 = to;
    ulImgs2.style.marginLeft = -i2 * LIWIDTH2 + "px";
    for (var li of lis2) {
        li.className = "";
    }
    if (i2 == LICOUNT2) {
        i2 = 0;
        setTimeout(function() {
            ulImgs2.className = "";
            ulImgs2.style.marginLeft = 0;
        }, DURTION2)
    }
    lis2[i2].className = "active";
}
ulIdxs2.onclick = function(e) {
    var span = e.target;
    if (span.nodeName == "SPAN") {
        if (span.className !== "active") {
            for (var i = 0; i < lis2.length; i++) {
                if (lis2[i] == span) {
                    break;
                }
            }
            moveTo2(i);
        }
    }
}
var interval2 = 2000;
var timer2 = setInterval(function() {
    moveTo2();
}, interval2);

// 3L 拍卖专场下的新闻 轮播图
var i3 = 0;
var LIWIDTH3 = 370;
var LICOUNT3 = 3;
var DURTION3 = 500;
var ulImgs3 = document.getElementById("news_images");
var ulIdxs3 = document.getElementById("news_slidenum");
console.log(ulIdxs3)
var lis3 = ulIdxs3.children;
console.log(lis3)

function moveTo3(to) {
    if (to == undefined) {
        to = i3 + 1;
    }
    if (i3 == 0) {
        if (to > i3) {
            ulImgs3.className = "transition";
        } else {
            ulImgs3.className = "";
            ulImgs3.style.marginLeft = -LIWIDTH3 * LICOUNT3 + "px";
            setTimeout(function() {
                moveTo(LICOUNT3 - 1);
            }, 100);
            return;
        }
    }
    i3 = to;
    ulImgs3.style.marginLeft = -i3 * LIWIDTH3 + "px";
    if (i3 == LICOUNT3) {
        i3 = 0;
        setTimeout(function() {
            ulImgs3.className = "";
            ulImgs3.style.marginLeft = 0;
        }, DURTION3);
    }
    for (var li of lis3) {
        li.className = "";
    }
    lis3[i3].className = "active";
}
ulIdxs3.onclick = function(e) {
    var span = e.target;
    if (span.nodeName == "SPAN") {
        if (span.className !== "active") {
            for (var i = 0; i < lis3.length; i++) {
                if (span == lis3[i]) {
                    break;
                }
            }
            moveTo3(i);
        }
    }
}
var interval3 = 2000;
var timer3 = setInterval(function() {
    moveTo3();
}, interval3);

// 3L 新闻列表
var newsTitle = document.getElementById("index_newsr_title");
var newsText = document.getElementById("index_newsr_text");
var uls4 = newsText.children;
var lis4 = newsTitle.children[0].children;
newsTitle.onclick = function(e) {
    var li = e.target;
    if (li.nodeName == "LI") {
        for (var val of lis4) {
            val.className = "";
        }
        for (var val of uls4) {
            val.className = "";
        }
        for (var i = 0; i < lis4.length; i++) {
            if (li == lis4[i]) {
                li.className = "hover";
                uls4[i].className = "block";
                break;
            }
        }
    }
}

// 5L 首页视频
var vSp = document.getElementById("v_sp");
var vSpCan = document.getElementById("v_sp_cancel");
var vSpBf = document.getElementById("v_sp_bf");
var cancel_bf = document.getElementById("cancel_bf");
vSpBf.onclick = function() {
    vSpCan.style.display = "block";
    vSp.display = "block";
    vSp.controls = true;
    vSp.play();
}
cancel_bf.onclick = function() {
    vSpCan.style.display = "none";
    vSp.display = "none";
    if (!vSp.paused) {
        vSp.pause();
    }
}

// 7L 艺术机构
var ulImgs7 = document.getElementById("ysjg_imgs");
var a = 0;
// 设置了两个相同的图片列表 当左外边距是整个ul内容宽度的一半时，使左外边距等于零
var b = ulImgs7.offsetWidth / 2;

function ysjg() {
    if (b == a) {
        a = 0;
    } else {
        a++;
    }
    ulImgs7.style.marginLeft = -a + "px";
}
var myYsjg = setInterval(ysjg, 40);
ulImgs7.onmouseover = function() {
    clearInterval(myYsjg);
}
ulImgs7.onmouseout = function() {
    myYsjg = setInterval(ysjg, 40)
}