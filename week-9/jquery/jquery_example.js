// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$("body").css({"background-color": "pink"});

// Release 2: Link your Code


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
var bodyElement = $("body");


// Release 4,5,6: Modify Elements with jQuery
$(".bodyh1").css({
  "color": "red",
  "border": "1px solid black",
  "visibility": "visible"
});

$("img").css({"border": "0px dotted black"});


$("img").hover(
  function(){
    $(this).attr('src', 'http://4.bp.blogspot.com/-JMrboygBDpw/T0gMZvxRDdI/AAAAAAAAAIU/P-InezeMGRY/s1600/islandfoxpupIRose2009sm.jpg');
    $(this).animate({
      "width": "220px",
      "borderWidth": "5px"
    }, "fast");
  },
  function(){
    $(this).attr("src", "./dbc_logo.png");
    $(this).css({
      "height": "100%",
      "border": "0px dotted black"
  });
  }
  );



});

//Release 7: Reflect

// What is jQuery?
// jQuery is a JavaScript library that is used to manipulate html and
// css elements on a page. JQuery can animate elements on a web page
// and add dynamic styling.

// What does jQuery do for you?
// So far, jQuery has enabled me to create drop down toolbars and buttons.
// I've been able to add animation to links and images and create much
// more dynamic, moving, page elements.

// What did you learn about the DOM while working on this challenge?
// I learned that elements from the DOM are also used in jQuery to turn
// affect changes to the page by turning elements into jQuery objects.