import "jquery-bar-rating";

import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  document.querySelectorAll(".star-review").forEach(element => {
    // console.log(element)
    $(element).barrating({
      theme: 'css-stars',
      onSelect: (value, text, event) => {

        console.log(element.parentElement.parentElement.parentElement)
        const form = element.parentElement.parentElement.parentElement
      // const form = $("form.review-form");
      // console.log(form)

      form.submit();
    }
    });
  });
};

export { initStarRating }
