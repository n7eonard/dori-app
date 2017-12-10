const flèche_2 = document.getElementById("fleche-bas2");
flèche_2.addEventListener("click", (event) => {
  document.getElementById('div-heures').classList.add("hidden");
  document.getElementById('div-adresses').classList.remove("hidden");
});

const last_field_hours = document.querySelectorAll(".container-form-heures:last-child textarea")[1];
last_field_hours.addEventListener("input", (event) => {
  const start_hours = document.querySelectorAll("textarea[id*='start']");
  const start_hours_size = start_hours.length
  var sum_of_existant = 0
  start_hours.forEach((hour) => {
    if (hour.value != "") {sum_of_existant += 1};
  });
  if (sum_of_existant == start_hours_size) {
    document.getElementById("go-forward3").classList.remove("no-go");
    };
});

// var eventList = ["click", "keyup"];
// for(event of eventList) {
  last_field_hours.addEventListener("keyup", (event) => {
    if (last_field_hours.value == "")
      {document.getElementById("go-forward3").classList.add("no-go")};
  });
// };


