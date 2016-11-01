$("#loginForm").submit(function(){
	$.ajax({
         type: 'POST',
         url: "login.php",
         data: $('#loginForm').serialize(), 
         success: function(response) {
            alert("Login Successful. Welcome " + response + "!"); 
			window.location.href = 'StartMenu.html';
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
        success: function (response) {
            window.location.href = 'Library.html';
            $('.cardBox').insert(response);
        },
        error: function () {
            alert("Error In Edit/Creation");
        }
    });
});