// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'select2';
import 'jquery';
import 'turbolinks';
$(document).on('turbolinks:load', function() {
  $('.select2-dropdown').select2({
    // Opciones de configuración, si es necesario
  });
});