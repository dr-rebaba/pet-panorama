import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dark"
export default class extends Controller {
  static targets = ["html"]
  connect() {
    console.log(this.htmlTarget)
  }
  toggleDark() {
    this.htmlTargets.forEach((item) => {
      console.log(item)
      item.classList.toggle("bg-dark")
      item.classList.toggle("text-light")
      item.classList.toggle("bg-white")
      item.classList.toggle("text-dark")
    })
  }
}
