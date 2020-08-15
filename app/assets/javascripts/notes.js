$(function () {
  $(".Note-box-icon").on("click", () => {
    $(".Note-box__bottom").toggle();
    $(".Note-box-icon").toggleClass("fas fa-caret-down");
    $(".Note-box-icon").toggleClass("fas fa-caret-up");
  });
});
