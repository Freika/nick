// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = [ "output" ]

  makeRequest() {
    Rails.ajax({
      type: "post",
      url: this.data.get('url'),
      data: new FormData(this.element)
    })
  }
}
