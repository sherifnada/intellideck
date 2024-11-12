// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "./application"
import FlashCardController from "./flash_card_controller"

application.register("flash-card", FlashCardController)
