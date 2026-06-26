document.addEventListener("DOMContentLoaded", function () {
  var btn = document.getElementById("export-pdf-btn");
  if (btn) {
    btn.addEventListener("click", function () {
      window.print();
    });
  }
});
