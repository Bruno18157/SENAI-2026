document.getElementById("year").textContent =
    new Date().getFullYear();

const header = document.querySelector("header");

window.addEventListener("scroll", () => {
    if (window.scrollY > 50) {
        header.style.background = "rgba(11, 15, 25, 0.97)";
    } else {
        header.style.background = "rgba(11, 15, 25, 0.85)";
    }
});