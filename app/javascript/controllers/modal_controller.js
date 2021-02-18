import {Controller} from "stimulus"
import Rails from "@rails/ujs";
import {enter, leave} from 'el-transition';
import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ["container", "wrapper", "modal", "form"]
  static values = { reflex: String }

  // call the enter and leave functions
  open(event) {
    let reflex = event.currentTarget.dataset['reflexValue']

    if (reflex) {
      this.stimulate(reflex)
    } else {
      this._reallyOpen()
    }
  }

  submitForm() {
    Rails.fire(this.formTarget, 'submit')
  }

  close() {
    leave(this.wrapperTarget)
    leave(this.modalTarget)
    this.containerTarget.classList.add('hidden')
  }

  afterReflex() {
    this._reallyOpen()
  }

  _reallyOpen() {
    this.containerTarget.classList.remove('hidden')
    enter(this.wrapperTarget)
    enter(this.modalTarget)
  }
}
