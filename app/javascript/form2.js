const flèche_2 = document.getElementById("fleche-bas2");
flèche_2.addEventListener("click", (event) => {
  document.getElementById('div-heures').classList.add("hidden");
  document.getElementById('div-adresses').classList.remove("hidden");
});

const start_hours = document.querySelectorAll("textarea[id*='start']");
const start_hours_size = start_hours.length
var sum_of_existant = 0
start_hours.forEach((hour) => {
  if (hour.value != "") {
    sum_of_existant += 1
  }
  console.log(sum_of_existant)
});
