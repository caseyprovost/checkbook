import {Controller} from "stimulus"
import {enter, leave} from 'el-transition';
import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ["element"]

  connect() {
    this.flashIn()
  }

  disconnect() {
    this.flashOut();
  }

  close() {
    flashOut(this.elementTarget)
    this.elementTarget.classList.add('hidden')
  }

  flashIn() {
    this.elementTarget.classList.remove('hidden')
    enter(this.elementTarget)
  }
}
