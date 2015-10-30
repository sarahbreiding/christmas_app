// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $('.gift-form').hide();

  $('.toggle').click(function(e){
    e.preventDefault();
    $(this).closest('h3').next().slideToggle();
    $(this).closest('h2').next().slideToggle();
  });

$('.idea-textarea').keydown(function(event){
  if(event.keyCode === 13) {
    this.form.submit();
    return false;
  }
});


 $('.completed .person-data').parent().siblings().hide();
 $('.completed .person-data').siblings().hide();


});
