$(function() {
    $.ajax({
        url: "footer1_ajax.html",
        type: "get",
        success: function(result) {
            $(result).replaceAll("#footer");
            $(`<link rel="stylesheet" href="css/footer1.css">`).appendTo("head");
        }
    })
})