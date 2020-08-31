jQuery(function() {
  $("a[rel~=popover], .has-popover").popover();
  $("a[rel~=tooltip], .has-tooltip").tooltip();
});
jQuery ->
  $('.datepicker').datepicker()
$('#datetimepicker').datetimepicker({ sideBySide: true, debug: true })