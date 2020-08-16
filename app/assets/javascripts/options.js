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

$(function () {
  $("#default-color").on("click", function () {
    $(".container").css("background-color", "rgb(0 0 0)");
  });
  $("#pop-color").on("click", function () {
    $(".container").css("background-color", "rgb(50 50 50)");
  });
  $("#cute-color").on("click", function () {
    $(".container").css("background-color", "rgb(100 100 100)");
  });
  $("#cadual-color").on("click", function () {
    $(".container").css("background-color", "rgb(150 150 150)");
  });
  $("#impact-color").on("click", function () {
    $(".container").css("background-color", "rgb(200 200 200)");
  });
});
