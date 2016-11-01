
//POST methods for db access
$("#loginForm").submit(function () {
	$.ajax({
         type: 'POST',
         url: "login.php",
         data: $('#loginForm').serialize(), 
         success: function(response) {
            alert("Login Successful. Welcome " + response + "!"); 
            window.location.href = 'StartMenu.html';
             //
         },
        error: function() {
            alert("Username or Password was incorrect");
        }
    });
});
$('#lib, #search').click(function () {
    $.ajax({
        type: 'POST',
        url: "library.php",
        data: $('#search').serialize(),
        success: function (response) {
            window.location.href = 'Library.html';
            $('.cardBox').insert(response);
        },
        error: function () {
            alert("Error Loading Archive");
        }
    });
});
$('#edit, #new').click(function () {
    $.ajax({
        type: 'POST',
        url: "edit.php",
        data: $(this).serialize(),
        success: function (response) {
            window.location.href = 'Library.html';
            $('.cardBox').insert(response);
        },
        error: function () {
            alert("Error In Edit/Creation");
        }
    });
});

//twinkling stars on the menu page
$(document).ready(function () {
    if (window.location.pathname.includes("Menu")) {
        blink();
        setInterval(blink, 3000);
    }
})
function blink() {
    var ctx = document.getElementById("canv");
    var context = ctx.getContext("2d");
    context.fillStyle = "white";
    var randX = Math.random * document.width;
    var randY = Math.random * document.height;
   context.fillRect(randX, randY, 20, 20);
    setTimeout(100);
    context.fillStyle = 'black';
    context.fillRect(randX, randY, 20, 20);
}

//WindowViewer functions
$('.leftCard').click(function () {
    window.location.href = 'WindowViewer.html?card=' + cardNum--;
});
$('.rightCard').click(function () {
    window.location.href = 'WindowViewer.html?card=' + cardNum++);
});
$('.centerCard').click(function () {
    window.location.href = 'WindowViewer.html?card=' + flip(cardNum);
});
function flip(card) {
    alert("hi");
}