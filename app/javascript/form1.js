const fleche = document.getElementById("fleche-bas");
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
  imgdebutant.setAttribute("src", "/assets/Debutant selected-92afd351cb041be226f8a2f7bc4cc8d10a106bac59e62f4653296f92a3f2bd85.png");
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
  imgintermediaire.setAttribute("src", "/assets/Intermediate selected-9ffcae130ca4d1f552625f1ec5ea072599e4020c9553deb5314a91d6ba6462ca.png");
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
  imgexpert.setAttribute("src", "/assets/Expert selected-d692401a823059ee4e407a6ead8a5d9d259ca749d0dc4c7f5679c3bdce31226e.png");
  imgexpert.classList.add("niveau-actif-expert");
}

