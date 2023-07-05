import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vote-modal"
export default class extends Controller {
  connect() {
    console.log("hey there");
  }

  open(event) {
    const button = event.currentTarget;
    const restaurantId = button.dataset.restaurantId;
    console.log(restaurantId)
    // this.restaurantIdInputTarget.value = restaurantId;
  }
}
