$(function(){
    $(".ec").on({
        mouseover:function(){
            $(this).css({
                left:(Math.random()*200)+"px",
                top:(Math.random()*200)+"px",
            });
        }
    });
    $(".ec").on({
        click: function () {
            $(document.write("Extra Credit is not a fair, higher education practice."));
        }
    });
})