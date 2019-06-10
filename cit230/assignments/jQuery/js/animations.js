// base example from w3schools.com

$(document).ready(function () {
    $("#thebutton").click(function () {
        //$("#div1").fadeIn(3000);
        $("#div1").fadeIn(3000);
        $("#div2").fadeIn("slow");
        $("#div3").fadeIn(6000);
        
    });

    $("#slideani").click(function () {
        $("#div4").css("display", "inline-block").css("color", "white").slideUp(3000).slideDown(2000);

        $("#div6").css("display", "inline-block").animate({right: '200px'}, 3000);

    });
});