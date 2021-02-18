import {Controller} from "stimulus"
import Rails from "@rails/ujs";
import {enter, leave} from 'el-transition';
import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ["container", "wrapper", "modal", "form"]

  connect() {
    this.open()
  }

  submitForm() {
    Rails.fire(this.formTarget, 'submit')
  }

  close() {
    leave(this.wrapperTarget)
    leave(this.modalTarget)
    this.containerTarget.classList.add('hidden')
  }

  open() {
    this.containerTarget.classList.remove('hidden')
    enter(this.wrapperTarget)
    enter(this.modalTarget)
  }
}
