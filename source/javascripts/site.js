$(document).ready(function(){

  // var menuHeight = $("#header").height();
  // var startPos = 0;
  // $(window).scroll(function(){
  //   var currentPos = $(this).scrollTop();
  //   if (currentPos > startPos) {
  //     if($(window).scrollTop() >= 200) {
  //       $("#header").css("top", "-" + menuHeight + "px");
  //     }
  //   } else {
  //     $("#header").css("top", 0 + "px");
  //   }
  //   startPos = currentPos;
  // });

  var state = false;
  var scrollpos;
  $("#drw-btn, #drw-layer").click(function(){
    if(state == false) {
      scrollpos = $(window).scrollTop();
      $('body').addClass('fixed').css({'top': -scrollpos});
      $("#drw-btn").addClass('open');
      state = true;
    } else {
      $('body').removeClass('fixed').css({'top': 0});
      window.scrollTo( 0 , scrollpos );
      $("#drw-btn").removeClass('open');
      state = false;
    }
    // $(this).toggleClass('open');
    $("#nav-menu").toggleClass('slide-in');
    $("#drw-layer").toggleClass('cover');
  });
});
