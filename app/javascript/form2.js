function form2Navigation() {
  const fleche_3 = document.getElementById("go-forward3");
  if (fleche_3) {
    fleche_3.addEventListener("click", (event) => {
      document.getElementById('div-heures').classList.add("hidden");
      document.getElementById('div-adresses').classList.remove("hidden");
    });
  }

  const back2 = document.getElementById("go-back3");
  if (back2) {
    back2.addEventListener("click", (event) => {
      document.getElementById('div-adresses').classList.add("hidden");
      document.getElementById('div-heures').classList.remove("hidden");
    });
  }

  const start_hours = document.querySelectorAll("textarea[id*='start']");
  const last_field_hours = document.querySelectorAll(".container-form-heures:last-child textarea")[1];

  const contain_hours = document.querySelectorAll(".container-form-heures");
  contain_hours.forEach((c) => {

    const divStart = c.querySelector("select[id*='start']");
    divStart.addEventListener("change", (event) => {
        const valueStart = divStart.value;
        const divEnd = c.querySelector("select[id*='_end']");
        divEnd.value = valueStart;
    });


  });



  if (last_field_hours) {
    last_field_hours.addEventListener("keyup", (event) => {
      if (last_field_hours.value == "")
        {document.getElementById("go-forward3").classList.add("no-go")};
    });

    const hours = document.querySelectorAll(".container-form-heures");
    hours.forEach((hourline) => {
      const start_hour = hourline.querySelector("textarea[id*='start']");
      const end_hour = hourline.querySelector("textarea[id*='end']");
      end_hour.addEventListener("focus", (event) => {
        const starting_time = start_hour.value;
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
  }




};

export { form2Navigation };
