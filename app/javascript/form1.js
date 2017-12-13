function form1Navigation() {
  const next1 = document.getElementById("go-forward1");
  if (next1) {
    next1.addEventListener("click", (event) => {
      document.getElementById('div-niveau').classList.add("hidden");
      document.getElementById('div-jours').classList.remove("hidden");
    });
  }

  const back1 = document.getElementById("go-back1");
  if (back1) {
    back1.addEventListener("click", (event) => {
      document.getElementById('div-niveau').classList.remove("hidden");
      document.getElementById('div-jours').classList.add("hidden");
    });
  }


  const label = document.querySelectorAll(".label-niveau h2");
  label.forEach((h2) => {
    h2.addEventListener("click", (event) => {
    const niveau = event.currentTarget.textContent;
    document.getElementById("swimming_level").setAttribute("value", niveau);
  })
  });

  const categories = document.querySelectorAll(".category-choice");
  categories.forEach((category) => {
  category.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("active");
    document.getElementById("go-forward2").classList.remove("no-go");
  })
  });


  const debutant = document.getElementById('casedebutant');
  if (debutant) {
    debutant.addEventListener("click", (event) => {
        intermediaire.classList.remove("niveau-actif-intermediaire");
        intermediaire.classList.add("label-niveau");
        expert.classList.remove("niveau-actif-expert");
        expert.classList.add("label-niveau");
        debutant.classList.remove("label-niveau");
        debutant.classList.add("niveau-actif-debutant");
        document.getElementById("go-forward1").classList.remove("no-go");
        // debutant.querySelector('p').classList.add("texte-actif");
        // intermediaire.querySelector('p').classList.remove("texte-actif");
        // expert.querySelector('p').classList.remove("texte-actif");
    });
  }


  function active1 () {
    debutant.classList.add("niveau-actif-debutant");
  }

  const intermediaire = document.getElementById('caseintermediaire');
  if (intermediaire) {
    intermediaire.addEventListener("click", (event) => {
      active2();
      expert.classList.remove("niveau-actif-expert");
      expert.classList.add("label-niveau");
      debutant.classList.remove("niveau-actif-debutant");
      debutant.classList.add("label-niveau");
      intermediaire.classList.remove("label-niveau");
      intermediaire.classList.add("niveau-actif-intermediaire");
      document.getElementById("go-forward1").classList.remove("no-go");
      // debutant.querySelector('p').classList.remove("texte-actif");
      // intermediaire.querySelector('p').classList.add("texte-actif");
      // expert.querySelector('p').classList.remove("texte-actif");
    });
  }

  function active2 () {
    intermediaire.classList.add("niveau-actif-intermediaire");
  }

  const expert = document.getElementById('caseexpert');
  if (expert) {
    expert.addEventListener("click", (event) => {
      active3();
      debutant.classList.remove("niveau-actif-debutant");
      debutant.classList.add("label-niveau");
      intermediaire.classList.remove("niveau-actif-intermediaire");
      intermediaire.classList.add("label-niveau");
      expert.classList.remove("label-niveau");
      expert.classList.add("niveau-actif-expert");
      document.getElementById("go-forward1").classList.remove("no-go");
      // debutant.querySelector('p').classList.remove("texte-actif");
      // intermediaire.querySelector('p').classList.remove("texte-actif");
      // expert.querySelector('p').classList.add("texte-actif");
    });
  }

  function active3 () {
    expert.classList.add("niveau-actif-expert");
  }
}

export { form1Navigation } ;
