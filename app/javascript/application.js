// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

// Pure CSS/JS fade-in animation using IntersectionObserver
const observerOptions = {
  root: null,
  rootMargin: "0px",
  threshold: 0.1
}

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add("visible")
      observer.unobserve(entry.target)
    }
  })
}, observerOptions)

document.addEventListener("turbo:load", () => {
  // Add staggered delay for bullet points
  let liIndex = 0;
  document.querySelectorAll(".fade-in").forEach(element => {
    observer.observe(element)
    if (element.tagName === "LI") {
      element.style.transitionDelay = `${0.08 * liIndex}s`;
      liIndex++;
    }
  })
})
