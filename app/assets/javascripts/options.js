$(function () {
  $(".Sub__right").on("click", function () {
    $(".OptionModal").fadeIn();
    return false;
  });
  $(".OptionModal__background, .OptionModal__close").on("click", function () {
    $(".OptionModal").fadeOut();
    return false;
  });
});
