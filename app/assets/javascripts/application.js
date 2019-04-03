// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require moment
//= require tempusdominus-bootstrap-4.js 
//= require jquery-ui
//= require moment
//= require jquery3
//= require popper
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(function () {
    $('#datetimepicker7').datetimepicker();
    $('#datetimepicker8').datetimepicker({
        useCurrent: false
    });
    $("#datetimepicker7").on("change.datetimepicker", function (e) {
        $('#datetimepicker8').datetimepicker('minDate', e.date);
    });
    $("#datetimepicker8").on("change.datetimepicker", function (e) {
        $('#datetimepicker7').datetimepicker('maxDate', e.date);
    });
});