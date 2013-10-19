library server;

import 'dart:io';

void main() {
  print("Hello, World!");
  HttpServer.bind(InternetAddress.ANY_IP_V4, 80)
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
