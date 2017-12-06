const flèche = document.getElementById("flèche-bas");
flèche.addEventListener("click", (event) => {
  document.getElementById('div-niveau').classList.add("hidden");
  document.getElementById('div-jours').classList.remove("hidden");
});


const label = document.querySelectorAll(".label-niveau");
label.forEach((div) => {
div.addEventListener("click", (event) => {
  const niveau = event.currentTarget.querySelector("p").textContent;
  document.getElementById("swimming_level").setAttribute("value", niveau);
})
});

const categories = document.querySelectorAll(".category-choice");
categories.forEach((category) => {
category.addEventListener("click", (event) => {
  event.currentTarget.classList.toggle("active");
})
});

