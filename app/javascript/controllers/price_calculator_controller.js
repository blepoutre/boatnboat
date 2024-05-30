import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price-calculator"
export default class extends Controller {
  static targets = ["calendar"]
  connect() {
  }
  date(){
    console.log(this.calendarTarget.value)
    console.log(this.calendarTarget)
  }
}
