const flèche_2 = document.getElementById("fleche-bas2");
flèche_2.addEventListener("click", (event) => {
  document.getElementById('div-heures').classList.add("hidden");
  document.getElementById('div-adresses').classList.remove("hidden");
});
