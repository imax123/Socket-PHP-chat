var socket = require( 'socket.io' );
var express = require( 'express' );
var http = require( 'http' );

var app = express();
var server = http.createServer( app );

var io = socket.listen( server );

io.sockets.on( 'connection', function( client ) {
	console.log( "New client !" );

	client.on('message', function ( data ) {
		console.log( "Message recieved" + data.name + ":" + data.msg );

		io.sockets.emit( 'message', { name: data.name, message: data.msg, id: data.id } );
	});
});

server.listen(8080);
console.log('chat-room is runing ....');