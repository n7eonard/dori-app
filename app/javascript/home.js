function home1Navigation() {
  const slidedown = document.querySelector(".button-scroll-1 img");
  if (slidedown) {
    slidedown.addEventListener("click", (event) => {
      document.querySelector(".wrapper-home1").classList.add("hidden");
      document.querySelector(".wrapper-home2").classList.remove("hidden");
    });
  };
}

function home2Navigation() {
  const slideup1 = document.querySelector(".button-scroll-up-1 img");
  const slidedown2 = document.querySelector(".button-scroll-down-2 img");
  if (slideup1) {
    slideup1.addEventListener("click", (event) => {
      document.querySelector(".wrapper-home2").classList.add("hidden");
      document.querySelector(".wrapper-home1").classList.remove("hidden");
    });
  };

  if (slidedown2) {
    slidedown2.addEventListener("click", (event) => {
      document.querySelector(".wrapper-home2").classList.add("hidden");
      document.querySelector(".wrapper-home3").classList.remove("hidden");
    });
  };

}

export { home1Navigation } ;
export { home2Navigation } ;
