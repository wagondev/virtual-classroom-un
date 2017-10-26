$(document).ready(function(){
      $(window).scroll(function() { // check if scroll event happened
        if ($(document).scrollTop() > 0) { // check if user scrolled more than 50 from top of the browser window
          $(".navbar-fixed-top").css("background-color", "#f8f8f8"); // if yes, then change the color of class "navbar-fixed-top" to white (#f8f8f8)
          $(".navbar-fixed-top").css("margin-top", "0"); // if yes, then change the color of class "navbar-fixed-top" to white (#f8f8f8)          
          $(".navbar-default").css("background-color", 'black')

        } else {
          $(".navbar-fixed-top").css("background-color", "transparent"); // if not, change it back to transparent
          $(".navbar-fixed-top").css("margin-top", "1rem"); // if yes, then change the color of class "navbar-fixed-top" to white (#f8f8f8)          
          $("a").css("color", '#fff');

        }
      });
    });

