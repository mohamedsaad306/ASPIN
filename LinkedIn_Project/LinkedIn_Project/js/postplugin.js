$(document).ready(function () {

    $("#postheadline").on("focus", function () { $("#postheadline").css("outline","none"); });

    $("#postcover").on("mouseenter", function () { $("#closeimg").css("display","inline"); });
   
    $("#postcover").on("mouseout", function () { $("#closeimg").css("display","none"); });

});