import { Controller } from "stimulus";

export default class extends Controller {
  displayForm(event) {
    event.currentTarget.nextElementSibling.classList.toggle("d-none")
  }
}
