$(document).ready(function(){
  $(".flash__message--success").fadeOut(5000);
  $(".flash__message--error").fadeOut(5000);
});

function centeringModalSyncer(){
	var w = $(window).width();
	var h = $(window).height();
	var cw = $(".modal__form").outerWidth({margin:true});
	var ch = $(".modal__form").outerHeight({margin:true});
	var pxleft = ((w - cw)/2);
	var pxtop = ((h - ch)/2);
	$(".modal__form").css({"left": pxleft + "px"});
	$(".modal__form").css({"top": pxtop + "px"});
}

$(function(){
  $(".task__add").click(function(){
    $(this).blur();
    if($(".modal__overlay")[0]) return false;
    $("body").append('<div class="modal__overlay"></div>');
    $(".modal__overlay, .modal__form").fadeIn("slow");
    centeringModalSyncer();
    $(function() {
        $(".modal__overlay,.modal__close").unbind().click(function(){
          $(".modal__form,.modal__overlay").fadeOut("slow",function(){
            $(".modal__overlay").remove();
        });
      });
    });
  });
});
