import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HaiLun Video'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 120,
              ),
              const Text(
                "Playing Video list Workout",
                style: TextStyle(
                  fontSize:24.0,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: Colors.white,
                      onPressed: _initializeAndPlay,
                      minWidth: 240,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: const Text(
                        "Play local files",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => PlayPage(clips: VideoClip.remoteClips)),
                        );
                      },
                      minWidth: 240,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: const Text(
                        "Play remote files",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => BasicPage()),
                        );
                      },
                      minWidth: 240,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: const Text(
                        "Basic Example",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void _initializeAndPlay(){
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => PlayPage(clips: VideoClip.localClips)),
    );
  }
}
