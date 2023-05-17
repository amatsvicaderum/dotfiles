$bar = document.querySelector("input#search");
document.addEventListener("keydown", (e) => {
  if ((e.key == "q" && e.shiftKey) || (e.key == "Q" && e.shiftKey)) {
    $bar.focus();
    e.preventDefault()
  }
});
