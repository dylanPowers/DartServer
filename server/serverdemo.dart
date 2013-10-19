library server;

import 'dart:io';

void main() {
  print("Hello, World!");
  HttpServer.bind("127.0.0.1", 80)
    .then((HttpServer server) {
      print("Listening for connections.....");
      server.listen((HttpRequest request) {
          print("New request: $request");
          request.response.write("Hello!");
          request.response.close();
        });
    })
    .catchError((error) {
      print("Error starting the HTTP server: $error");
    });
}
