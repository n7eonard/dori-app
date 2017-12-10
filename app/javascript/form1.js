const fleche = document.getElementById("go-forward1");
if (fleche) {
  fleche.addEventListener("click", (event) => {
    document.getElementById('div-niveau').classList.add("hidden");
    document.getElementById('div-jours').classList.remove("hidden");
  });
}

const fleche2 = document.getElementById("go-back1");
if (fleche2) {
  fleche2.addEventListener("click", (event) => {
    document.getElementById('div-niveau').classList.remove("hidden");
    document.getElementById('div-jours').classList.add("hidden");
  });
}


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
  document.getElementById("go-forward2").classList.remove("no-go");
})
});


const debutant = document.getElementById('casedebutant');
if (debutant) {
  debutant.addEventListener("click", (event) => {
    active1();
      imgintermediaire.classList.remove("niveau-actif-intermediaire");
      imgexpert.classList.remove("niveau-actif-expert");
      document.getElementById("go-forward1").classList.remove("no-go");
      debutant.querySelector('p').classList.add("texte-actif");
      intermediaire.querySelector('p').classList.remove("texte-actif");
      expert.querySelector('p').classList.remove("texte-actif");
  });
}


const imgdebutant = document.getElementById('debutant')
function active1 () {
  imgintermediaire.setAttribute("src", "/assets/Image intermediaire-269d8164b718e42f4cdbb2455be8aa923c025ca1c3fb8b2b144ed747865b4e0b.png");
  imgexpert.setAttribute("src", "/assets/image expert-7577e2552056366b8c77971e131e674cac07c325e89efec090f7d601e6910ba1.png");
  imgdebutant.setAttribute("src", "/assets/Debutant-selected-1bb5c322d22d27dd4df98b4307f25808b8122baa91ec0a046bef12054300bcba.png");
  imgdebutant.classList.add("niveau-actif-debutant");
}

const intermediaire = document.getElementById('caseintermediaire');
if (intermediaire) {
  intermediaire.addEventListener("click", (event) => {
    active2();
    imgdebutant.classList.remove("niveau-actif-debutant");
    imgexpert.classList.remove("niveau-actif-expert");
    document.getElementById("go-forward1").classList.remove("no-go");
    debutant.querySelector('p').classList.remove("texte-actif");
    intermediaire.querySelector('p').classList.add("texte-actif");
    expert.querySelector('p').classList.remove("texte-actif");
  });
}

const imgintermediaire = document.getElementById('intermediaire')
function active2 () {
  imgexpert.setAttribute("src", "/assets/image expert-7577e2552056366b8c77971e131e674cac07c325e89efec090f7d601e6910ba1.png");
  imgdebutant.setAttribute("src", "/assets/Image debutant-714cb5fcb9a5eef8d1884c25b88f5b59a7c7a66b67e6491a5dde7417aefb8be3.png");
  imgintermediaire.setAttribute("src", "/assets/Intermediate-selected-725872fe2f95beb09587f74af954cf0b9e2cf39d324b2abf77d05d9e545724fd.png");
  imgintermediaire.classList.add("niveau-actif-intermediaire");
}

const expert = document.getElementById('caseexpert');
if (expert) {
  expert.addEventListener("click", (event) => {
    active3();
    imgdebutant.classList.remove("niveau-actif-debutant");
    imgintermediaire.classList.remove("niveau-actif-intermediaire");
    document.getElementById("go-forward1").classList.remove("no-go");
    debutant.querySelector('p').classList.remove("texte-actif");
    intermediaire.querySelector('p').classList.remove("texte-actif");
    expert.querySelector('p').classList.add("texte-actif");
  });
}

const imgexpert = document.getElementById('expert')
function active3 () {
  imgintermediaire.setAttribute("src", "/assets/Image intermediaire-269d8164b718e42f4cdbb2455be8aa923c025ca1c3fb8b2b144ed747865b4e0b.png");
  imgdebutant.setAttribute("src", "/assets/Image debutant-714cb5fcb9a5eef8d1884c25b88f5b59a7c7a66b67e6491a5dde7417aefb8be3.png");
  imgexpert.setAttribute("src", "/assets/Expert-selected-36bb890d3bbdbd1c4f245fbbb49955759073d77615a404937a8d2ae40e592078.png");
  imgexpert.classList.add("niveau-actif-expert");
}

