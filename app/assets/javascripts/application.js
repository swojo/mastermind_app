// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
// require turbolinks
//= require_tree .

$(document).ready(function(){

var Mastermind = function() {
  this.messages = $("#messages");
  this.elements = this.messages.children();
  this.message_array = this.elements;
  this.count = 0;
  this.elements.hide();
}

Mastermind.prototype.addButtonHandler = function() {
  $('.btn').click(function(){
    if(count < message_array.length){
      $(message_array[count]).fadeIn();
      ++count;
      if(count == message_array.length){
        $('.btn').hide();
      }
    }
    
  });
}

  Mastermind();
  Mastermind.prototype.addButtonHandler();
 
  text = $("#code_code")

  $(".button_row button").click(function(event){
    var id = event.target.id;
    window.text.val(window.text.val()+ id[0]);
  }); 
});
