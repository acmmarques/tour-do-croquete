import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-button"
export default class extends Controller {
  connect() {
    console.log(" hello  blah");
  }

  fire(event) {
    const button = event.currentTarget
    console.log("fire button");

    const sentences = [
      "Ronaldo > Messi",
      "Gyokerete = Gyokeres + croquete",
      "Hmmm, cheira-me a leitinho",
      "Mentira"
      ];

    if (button.classList.contains("clicked")) {
      button.classList.remove("clicked");
      button.innerHTML = "Concordas?";
    }
    else {
      button.classList.add("clicked");
      const randomIndex = Math.floor(Math.random() * sentences.length);
      const randomSentence = sentences[randomIndex];
      button.innerHTML = randomSentence;
    }
  }
}
