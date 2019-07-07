import 'package:flutter_web/material.dart';
import 'dart:html' as html;

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

const twitterIcon = IconData(0xf081, fontFamily: "FontAwesomeBrands");
const linkedinIcon = IconData(0xf08c, fontFamily: "FontAwesomeBrands");
const githubIcon = IconData(0xf092, fontFamily: "FontAwesomeBrands");

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
                PaddedIconButton(
                    iconData: githubIcon,
                    onPressed: () => html.window.open("https://github.com/bulwinkel", "github")
                ),
                PaddedIconButton(
                    iconData: twitterIcon,
                    onPressed: () => html.window.open("https://twitter.com/kelvinbulwinkel", "twitter")
                ),
                PaddedIconButton(
                    iconData: linkedinIcon,
                    onPressed: () => html.window.open("https://www.linkedin.com/in/bulwinkel/", "linkedin")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget PaddedIconButton({IconData iconData, VoidCallback onPressed}) => Padding(
  padding: const EdgeInsets.all(32.0),
  child: IconButton(
    icon: Icon(iconData),
    color: Color.fromRGBO(153, 102, 251, 1),
    onPressed: onPressed,
  ),
);