$(function() {
  autosize(document.querySelectorAll("textarea"));

  if ($(window).width() >= 768) {
    stickyVideo = $(".sticky-video")[0];

    if (stickyVideo) {
      var stickyVideo = new Waypoint.Sticky({
        element: $(".sticky-video")[0]
      });

      var container_margin = parseFloat($(".container").css("margin-right"));
      var video_margin = container_margin - 4;
      $(".sticky-video").css("margin-right", video_margin);

      var stickyVideoWrapper = $(".sticky-video").waypoint({
        handler: function(direction) {
          if (direction === "down") {
            $(".sticky-wrapper").addClass("sticky-wrapper-stuck");
          } else {
            $(".sticky-wrapper").removeClass("sticky-wrapper-stuck");
          }
        }
      })
    }
  }

  var toc = $("#markdown-toc");
  toc.detach;
  $("#menu").append(toc);

  var menu = $(".menu-link").bigSlide({
    easyClose: true,
    menuWidth: "360px",
    openDefault: true
  });

  var bigSlideAPI = menu.bigSlideAPI;

  $("#menu ul li a").on("click", function(e) {
    bigSlideAPI.view.toggleClose();
    var target = $($(this).attr("href"));
    $("html, body").stop().animate({
      scrollTop: target.offset().top
    }, 1500, "easeOutCubic");
  });

  $("nav.panel").show();

  if ($(".footnotes").length) {
    if ($(window).width() >= 768) {
      $(".chapter").sidenotes();
    }

    $(window).resized(function() {
      if( $(window).width() < 768 ) {
        $(".chapter").sidenotes("hide");
      } else {
        $(".chapter").sidenotes("show");
      }
    });
  }
});
