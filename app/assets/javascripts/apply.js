$( document ).ready(function() {
  $( "#students_apply" ).hover(
  function() {
    $( "#students_overlay" ).removeClass( "hide" );
    $( "#students-image" ).css("-webkit-filter","grayscale(0%)");
    $( "#students-image" ).css("-moz-filter","grayscale(0%)");
    $( "#students-image" ).css("filter","grayscale(0%)");
  }, function() {
    $( "#students_overlay" ).addClass( "hide" );
    $( "#students-image" ).css("-webkit-filter","grayscale(100%)");
    $( "#students-image" ).css("-moz-filter","grayscale(100%)");
    $( "#students-image" ).css("filter","grayscale(100%)");
  }
);

$( "#mentors_apply" ).hover(
  function() {
    $( "#mentors_overlay" ).removeClass( "hide" );
    $( "#mentors-image" ).css("-webkit-filter","grayscale(0%)");
    $( "#mentors-image" ).css("-moz-filter","grayscale(0%)");
    $( "#mentors-image" ).css("filter","grayscale(0%)");
  }, function() {
    $( "#mentors_overlay" ).addClass( "hide" );
    $( "#mentors-image" ).css("-webkit-filter","grayscale(100%)");
    $( "#mentors-image" ).css("-moz-filter","grayscale(100%)");
    $( "#mentors-image" ).css("filter","grayscale(100%)");
  }
);

$( "#faq_link" ).click(function() {
  window.location.href = "/faq.pdf";
});
});