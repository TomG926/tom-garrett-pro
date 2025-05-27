import { Controller } from "@hotwired/stimulus"
import { gsap } from "gsap"

export default class extends Controller {
  static targets = ["filter", "card"]

  connect() {
    this.setupFilters()
  }

  setupFilters() {
    this.filterTargets.forEach(filter => {
      filter.addEventListener("click", (e) => {
        e.preventDefault()
        this.filterProjects(filter.dataset.filter)
        this.updateActiveFilter(filter)
      })
    })
  }

  filterProjects(category) {
    this.cardTargets.forEach(card => {
      const shouldShow = category === "all" || card.dataset.category === category
      
      gsap.to(card, {
        duration: 0.3,
        opacity: shouldShow ? 1 : 0,
        scale: shouldShow ? 1 : 0.8,
        display: shouldShow ? "flex" : "none",
        ease: "power2.out"
      })
    })
  }

  updateActiveFilter(activeFilter) {
    this.filterTargets.forEach(filter => {
      filter.classList.toggle("active", filter === activeFilter)
    })
  }
} 