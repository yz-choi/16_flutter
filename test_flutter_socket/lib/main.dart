import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final title = "웹소켓 테스트";
    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final WebSocketChannel channel = IOWebSocketChannel.connect('ws://echo.websocket.org');

  MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();

  void checkPlatform() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      print("Running on iOS");
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      print("Running on Android");
    } else if (defaultTargetPlatform == TargetPlatform.fuchsia) {
      print("Running on Fuchsia");
    } else if (defaultTargetPlatform == TargetPlatform.macOS) {
      print("Running on macOS");
    } else if (defaultTargetPlatform == TargetPlatform.linux) {
      print("Running on Linux");
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      print("Running on Windows");
    } else {
      print("Running on an unknown platform");
    }
  }

  @override
  Widget build(BuildContext context) {
    checkPlatform();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("테스트앱소켓", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: "메세지를 보내세용"),
              ),
            ),
            StreamBuilder(
                stream: widget.channel.stream,
                builder: (context, snapshot){
                  return Padding(padding: const EdgeInsets.symmetric(vertical:24),
                    child: Text(snapshot.hasData ? '${snapshot.data}' : "" ),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(_controller.text.isNotEmpty){
          widget.channel.sink.add(_controller.text);
        }
      },
      tooltip: "send message",
      child: Icon(Icons.send),),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
      ),
    );
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}


