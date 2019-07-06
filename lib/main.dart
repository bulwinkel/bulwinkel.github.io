import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bulwinkel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "winking.png",
              fit: BoxFit.contain,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PaddedIcon(
                  Icons.share,
                ),
                PaddedIcon(
                  Icons.add,
                ),
                PaddedIcon(
                  Icons.close,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget PaddedIcon(IconData iconData) => Padding(
  padding: const EdgeInsets.all(32.0),
  child: Icon(
    iconData,
    color: Colors.red,
  ),
);