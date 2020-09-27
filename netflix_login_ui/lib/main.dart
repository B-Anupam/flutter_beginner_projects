import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Login',
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          width: 100.0,
        ),
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Email or Phone number",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                border: InputBorder.none,
                fillColor: Colors.white38,
                filled: true,
              ),
              style: TextStyle(
                fontSize: 22.0,
              ),
              cursorColor: Colors.white,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                border: InputBorder.none,
                fillColor: Colors.white38,
                filled: true,
              ),
              style: TextStyle(
                fontSize: 22.0,
              ),
              cursorColor: Colors.white,
            ),
            SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlineButton(
                onPressed: () {},
                highlightedBorderColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                print("Need Help Tapped");
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Text(
                "Need Help ?",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                print("Need Help Tapped");
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Text(
                "New to Netflix? Sign Up now ?",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Sign up is protected by google recaptcha ..",
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
                TextSpan(
                    text: "Learn More",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Print Learn More");
                      })
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
