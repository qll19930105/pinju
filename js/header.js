$.ajax({
    url: "header_ajax.html",
    type: "get",
    success: function(result) {
        $(result).replaceAll("#header");
        $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
    }
})