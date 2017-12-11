function tabNavigation() {
  const programTab = document.querySelector(".nav-programme h4");
  const poolsTab = document.querySelector(".nav-piscines h4");
  programTab.addEventListener("click", (event) => {
    console.log("coucou");
    document.querySelector('.pools-tab').classList.add("hidden");
    document.querySelector('.program-tab').classList.remove("hidden");
    document.querySelector(".nav-programme").classList.add("nav-active");
    document.querySelector(".nav-piscines").classList.remove("nav-active");
  });

  poolsTab.addEventListener("click", (event) => {
    console.log("hibou");
    document.querySelector('.pools-tab').classList.remove("hidden");
    document.querySelector('.program-tab').classList.add("hidden");
    document.querySelector(".nav-programme").classList.remove("nav-active");
    document.querySelector(".nav-piscines").classList.add("nav-active");
  });
}

export { tabNavigation };
