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


function Mastermind() {
  this.message_array = $('#messages').children();
  this.count = 0;
  this.message_array.hide();
}

Mastermind.prototype.addButtonHandler = function() {
  $('.btn').click($.proxy(this.onClick, this));
}

Mastermind.prototype.onClick= function(){
  if(this.count < this.message_array.length){
    $(this.message_array[this.count]).fadeIn();
    ++this.count;
    if(this.count == this.message_array.length){
      $('.btn').hide();
    }
  }
}


function Colors(){
  this.text = $("#code_code");
}

Colors.prototype.colorButtonHandler = function(){
  $(".button_row button").click($.proxy(this.onClick, this)); 
} 

Colors.prototype.onClick = function(event) {
    var id = event.target.id;
    this.text.val(this.text.val()+ id[0]);
}

$(document).ready(function(){

  var mastermind = new Mastermind();
  mastermind.addButtonHandler();

  var colors = new Colors();
  colors.colorButtonHandler();
 
});
