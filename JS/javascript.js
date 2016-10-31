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
$("#search").submit(function(){
	$.ajax({
         type: 'POST',
         url: "search.php",
         data: $('#search').serialize(), 
         success: function(response) {
 			$('.cardBox').insert(response);
         },
        error: function() {
            alert("There was an error searching");
        }
    });
});
$('#lib').click(function(){
	$.ajax({
         type: 'POST',
         url: "library.php",
         success: function(response) {
			window.location.href = 'Library.html';
			$('.cardBox').insert(response);
         },
        error: function() {
            alert("Error Loading Archive");
        }
    });
});