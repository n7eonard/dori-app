const fleche_3 = document.getElementById("go-forward3");
fleche_3.addEventListener("click", (event) => {
  document.getElementById('div-heures').classList.add("hidden");
  document.getElementById('div-adresses').classList.remove("hidden");
});

const start_hours = document.querySelectorAll("textarea[id*='start']");
const last_field_hours = document.querySelectorAll(".container-form-heures:last-child textarea")[1];
last_field_hours.addEventListener("focus", (event) => {
  const start_hours_size = start_hours.length
  var sum_of_existant = 0
  start_hours.forEach((hour) => {
    if (hour.value != "") {sum_of_existant += 1};
  });
  if (sum_of_existant == start_hours_size) {
    document.getElementById("go-forward3").classList.remove("no-go");
    };
});


last_field_hours.addEventListener("keyup", (event) => {
  if (last_field_hours.value == "")
    {document.getElementById("go-forward3").classList.add("no-go")};
});

const hours = document.querySelectorAll(".container-form-heures");
hours.forEach((hourline) => {
  const start_hour = hourline.querySelector("textarea[id*='start']");
  const end_hour = hourline.querySelector("textarea[id*='end']");
  console.log("coucou");
  end_hour.addEventListener("focus", (event) => {
    console.log("hibou");
    starting_time = start_hour.value;
    if (starting_time.match(/\d{2}h\d{2}/)) {
      const heures_regex1 = Number(starting_time.match(/\d{2}/)[0]);
      const minutes_regex1 = Number(starting_time.match(/(h(\d{2}))/)[2]);
      end_hour.value = `${heures_regex1+1}h${minutes_regex1}`;
    }
    else if (starting_time.match(/^\d{2}h$/)) {
      const heures_regex2 = Number(starting_time.match(/\d{2}/)[0]);
      end_hour.value = `${heures_regex2+1}h`;
    }
    else if (starting_time.match(/^\d{2}$/)) {
      const heures_regex3 = Number(starting_time.match(/\d{2}/)[0]);
      end_hour.value = `${heures_regex3+1}`;
    };
  });
});


// const end_hours = document.querySelectorAll(".container-form-heures textarea[id*='end']");
// end_hours.forEach((hour) => {
//   hour.addEventListener("touchenter", (event) => {
//     if (hour.value == ""){
//       hour.value = document.ge
//     }
//   });
// });
