import { Controller } from "stimulus";

export default class extends Controller {
  displayForm(event) {
    // console.log(event.currentTarget.parentNode.nextElementSibling.classList);
    event.currentTarget.parentNode.nextElementSibling.classList.toggle("d-none")
  }
}
