import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hindi Quotes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.yellowAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> quotes = [
    "मै हु अनहोनी !",
    "जब तक आप अपनी समस्याओं एंव कठिनाइयों की वजह दूसरों को मानते है, तब तक आप अपनी समस्याओं एंव कठिनाइयों को मिटा नहीं सकते|",
    "बीच रास्ते से लौटने का कोई फायदा नहीं क्योंकि लौटने पर आपको उतनी ही दूरी तय करनी पड़ेगी जितनी दूरी तय करने पर आप लक्ष्य तक पहुँच सकते है |",
    "सफलता हमारा परिचय दुनिया को करवाती है और असफलता हमें दुनिया का परिचय करवाती है |",
    "महानता कभी न गिरने में नहीं बल्कि हर बार गिरकर उठ जाने में है |",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TinderSwapCard(
          totalNum: quotes.length,
          cardBuilder: (ctxt, index) {
            return Card(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    quotes[index],
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.yellowAccent,
                      // changed color after recording
                    ),
                  ),
                ),
              ),
            );
          },
          orientation: AmassOrientation.BOTTOM,
          maxWidth: 400.0,
          maxHeight: 400.0,
          minHeight: 250.0,
          minWidth: 250.0,
          // == BETTER WAY
          // maxWidth: MediaQuery.of(context).size.width * 0.9,
          //         maxHeight: MediaQuery.of(context).size.width * 0.9,
          //         minWidth: MediaQuery.of(context).size.width * 0.8,
          //         minHeight: MediaQuery.of(context).size.width * 0.8,
          stackNum: 2,
          swipeDown: false,
          swipeUp: false,
          swipeCompleteCallback: (CardSwipeOrientation orient, int index) {
            if (orient == CardSwipeOrientation.LEFT) {
              print('LEFT SWIPED');
              print(quotes[index]);
            } else {
              print('Right SWIPED');
              print(quotes[index]);
            }
          },
        ),
      ),
    );
  }
}
