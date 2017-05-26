$(document).ready(function(){
$("#doit").click(function() {

 if($('.cbox1').not(':checked').each(function() {
    var id = $(this).val();
    $('#status').html("Disabled");
    alert("Changes saved successfully!!");
  }));
  
});
});