const fleche = document.getElementById("flèche-bas");
if (fleche) {
  fleche.addEventListener("click", (event) => {
    document.getElementById('div-niveau').classList.add("hidden");
    document.getElementById('div-jours').classList.remove("hidden");
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
})
});


const debutant = document.getElementById('casedebutant');
if (debutant) {
  debutant.addEventListener("click", (event) => {
    active1();
      imgintermediaire.classList.remove("niveau-actif-intermediaire");
      imgexpert.classList.remove("niveau-actif-expert");
  });
}


const imgdebutant = document.getElementById('debutant')
function active1 () {
  imgintermediaire.setAttribute("src", "/assets/Image intermediaire-269d8164b718e42f4cdbb2455be8aa923c025ca1c3fb8b2b144ed747865b4e0b.png");
  imgexpert.setAttribute("src", "/assets/image expert-7577e2552056366b8c77971e131e674cac07c325e89efec090f7d601e6910ba1.png");
  imgdebutant.setAttribute("src", "/assets/Debutant selected-a105feedc5646347cd07148cdefb91af6e09942955d296a8d3c591595efc95e3.png");
  imgdebutant.classList.add("niveau-actif-debutant");
}

const intermediaire = document.getElementById('caseintermediaire');
if (intermediaire) {
  intermediaire.addEventListener("click", (event) => {
    active2();
    imgdebutant.classList.remove("niveau-actif-debutant");
    imgexpert.classList.remove("niveau-actif-expert");
  });
}

const imgintermediaire = document.getElementById('intermediaire')
function active2 () {
  imgexpert.setAttribute("src", "/assets/image expert-7577e2552056366b8c77971e131e674cac07c325e89efec090f7d601e6910ba1.png");
  imgdebutant.setAttribute("src", "/assets/Image debutant-714cb5fcb9a5eef8d1884c25b88f5b59a7c7a66b67e6491a5dde7417aefb8be3.png");
  imgintermediaire.setAttribute("src", "/assets/Intermediate selected-1a2e78761a8d743556a5c1e42deff59872f1dbd0d0958b80e25cdabc99541994.png");
  imgintermediaire.classList.add("niveau-actif-intermediaire");
}

const expert = document.getElementById('caseexpert');
if (expert) {
  expert.addEventListener("click", (event) => {
    active3();
    imgdebutant.classList.remove("niveau-actif-debutant");
    imgintermediaire.classList.remove("niveau-actif-intermediaire");
  });
}

const imgexpert = document.getElementById('expert')
function active3 () {
  imgintermediaire.setAttribute("src", "/assets/Image intermediaire-269d8164b718e42f4cdbb2455be8aa923c025ca1c3fb8b2b144ed747865b4e0b.png");
  imgdebutant.setAttribute("src", "/assets/Image debutant-714cb5fcb9a5eef8d1884c25b88f5b59a7c7a66b67e6491a5dde7417aefb8be3.png");
  imgexpert.setAttribute("src", "/assets/Expert selected-c38c2aa9a6e60eece23e7edf3f571ea483251d03408979ebea181c4404159af5.png");
  imgexpert.classList.add("niveau-actif-expert");
}

