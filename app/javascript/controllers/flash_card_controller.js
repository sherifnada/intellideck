import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["editButton"]

  editCard(event) {
    const cardId = event.currentTarget.dataset.cardId
    const rowId = `flash_card_row_${cardId}`
    const editFormId = `edit_form_row_${cardId}`
    
    document.getElementById(rowId).classList.add('hidden')
    document.getElementById(editFormId).classList.remove('hidden')
  }

  cancelEdit(event) {
    const cardId = event.currentTarget.dataset.cardId
    const rowId = `flash_card_row_${cardId}`
    const editFormId = `edit_form_row_${cardId}`
    
    document.getElementById(rowId).classList.remove('hidden')
    document.getElementById(editFormId).classList.add('hidden')
  }
} 