
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
	alert("go to library");
    $.ajax({
        type: 'POST',
        url: "library.php",
        data: $(this).serialize(), 
        success: function (response) {
            $('.cardBox').insert(response);
            window.location.href = 'Library.html';
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
});
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

$('.cardBox img').click(function(){
	alert("HI");
});

//WindowViewer functions
$('.leftCard').click(function () {
    window.location.href = 'WindowViewer.html?card=' + cardNum--;
});
$('.rightCard').click(function () {
    window.location.href = 'WindowViewer.html?card=' + cardNum++;
});
$('.centerCard').click(function () {
    window.location.href = 'WindowViewer.html?card=' + flip(cardNum);
});
function flip(card) {




//functions for Make a Card
//     var s1 = doucment.getElementById("submit1");
//     s1.addEventListener('click', function (e){
//         var custName = document.getElementById("customerName");
//         var charName = document.getElementById("characterName");
//         $('#makeCardForm1').hide();
//         $('#makeCardForm2').show();
//     });
//
//     var s2 = document.getElementById("submit2");
//     s2.addEventListener('click', function (e){
//         if ($('#background1').attr("checked")){
//             $('#blankCard').css({'background-image': 'url("../Cards/Blanks/ControlRoom_wBanner.jpg")'});
//         }
//         else if ($('#background2').attr("checked")){
//             $('#blankCard').css({'background-image': 'url("../Cards/Blanks/Space_wBanner.jpg")'});
//         }
//         else if ($('#background3').attr("checked")){
//             $('#blankCard').css({'background-image': 'url("../Cards/Blanks/Transporter_wBanner.jpg")'});
//         }
//         else if ($('#background1').attr("checked")){
//             $('#blankCard').css({'background-image': 'url("../Cards/Blanks/Hallway_wBanner.jpg")'});
//         }
//     });
	if(card.includes('R')){
		card.prototype.replace('_R', '');
	}else{
		card.prototype.replace('.jpg', '_R.jpg');
	}
}

