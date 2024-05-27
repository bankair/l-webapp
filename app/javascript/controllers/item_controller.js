import { patch } from '@rails/request.js'
import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="item"
export default class extends Controller {
  static values = { url: String }
  static targets = ['name']

  toggle(event) {
    this.nameTarget.classList[event.target.checked ? 'add' : 'remove']('line-through')

    patch(
      this.urlValue,
      {
        responseKind: 'json',
        body: { item: { active: !event.target.checked } }
      }
    ).then(function(response) {
        if (!response.ok) {
          event.target.checked = !event.target.checked
        }
      })




  }

}
