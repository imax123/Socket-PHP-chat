var socket = io.connect("http://localhost:8080");

$(function () {

	var user ;

	/* user first page code */
	$("#entryForm").submit(function () {
		var name = $("#name").val();

		$.ajax({
			url : 'ajax.php',
			method: 'POST',
			data:{name:name},
			success: function ( res )
			{
				if(res)
				{
					localStorage.setItem("user_id", res);    // save user id in browser 
					window.open ('chat.html','_self',false)
				}
			}
		});
		return false ;
	});

	/* Script for get user name form database */
	$.ajax({
		url : 'get_user.php',
		method : 'post',
		data : {id: localStorage.getItem("user_id") },
		success : function (res) {
			user = res ;
		}
	});

	/* User second time code */
	$("#msgForm").submit(function() {
		
		var msg = $("#message").val();
		var user_id = localStorage.getItem("user_id");    // Get local storage value from browser 

		socket.emit('message', { name: user, msg: msg ,id: user_id} );

		$.ajax({
			url : 'message.php',
			method : 'POST',
			dataType: 'JSON',
			data : {msg: msg, id: user_id},
			success: function (res) {
				localStorage.setItem("last_msg_id", res);
				console.log("msg_id_set");
			}
		});
		
		return false ;
	});

	socket.on( 'message', function( data ) {

		var last_id = localStorage.getItem("last_msg_id");

		var msgData = "<li class='mar-btm'>" + 
			    		"<div class='media-left'>" +
			    			"<img src='/chat-room/img/avatar1.png' class='img-circle img-sm' alt='Profile Picture'>" +
			    		"</div>" +
			    		"<div class='media-body pad-hor'>" +
			    			"<div class='speech'>" +
			    			"<a href='#' class='media-heading'>"+ data.name +"</a>" + 
			    			"<p>" + data.message + "</p>" +
			    			"<p class='speech-time'>" +
			    			"<i class='fa fa-clock-o fa-fw'>" + "</i></p>" +
			    			"</div>" +
			    		"</div>" + 
			    	"</li>" ;

			$("#msdBlock").append(msgData); 

		/****** Ajax for get data form messages database table 
		console.log('here');

		$.ajax({

			url : 'get_message.php',
			method : 'POST',
			dataType : 'JSON',
			data:{ id : last_id },
			success : function ( ret ) {

				var msgData = "<li class='mar-btm'>" + 
			    		"<div class='media-left'>" +
			    			"<img src='/chat-room/img/avatar1.png' class='img-circle img-sm' alt='Profile Picture'>" +
			    		"</div>" +
			    		"<div class='media-body pad-hor'>" +
			    			"<div class='speech'>" +
			    			"<a href='#' class='media-heading'>"+ ret.name +"</a>" + 
			    			"<p>" + ret.messages + "</p>" +
			    			"<p class='speech-time'>" +
			    			"<i class='fa fa-clock-o fa-fw'>" + "</i></p>" +
			    			"</div>" +
			    		"</div>" + 
			    	"</li>" ;

			}

			$("#msdBlock").append(msgData); 
			
		});

		return false ;
		****/
	});

});