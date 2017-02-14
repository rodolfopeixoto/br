// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready = function() {

  $('select').material_select();

};

$(document).ready(ready);
$(document).on('page:load', ready);