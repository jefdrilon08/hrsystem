// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import Alpine from 'alpinejs'

import Rails from "@rails/ujs"
Rails.start()
Alpine.start()


