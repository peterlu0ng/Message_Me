// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as jquery from "jquery"
window.jQuery = jquery
window.$ = jquery
import "semantic-ui"

$(document).on('turbo:load', function(){
    console.log('loaded turbo links')
    $('.ui.dropdown').dropdown()
});