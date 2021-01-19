import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageDemo(),
    );
  }
}

class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Page Transition Demo'),
              onPressed: (){
                Navigator.push(context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: SecondPage(),
                    ),
                );
              },
            ),
            RaisedButton(
              child: Text('PAge transition Demo'),
              onPressed: (){
                Navigator.push(context,PageTransition(
                  type: PageTransitionType.leftToRight,
                  curve: Curves.easeIn,
                  child: SecondPage(),
                ),);
              },
            ),
            RaisedButton(
              child: Text('PAge transition Demo'),
              onPressed: (){
                Navigator.push(context,PageTransition(
                  type: PageTransitionType.upToDown,
                  curve: Curves.bounceInOut,
                  child: SecondPage(),
                ),);

              },
            ),
            RaisedButton(
              child: Text('PAge transition Demo'),
              onPressed: (){
                Navigator.push(context, PageTransition(
                  type: PageTransitionType.downToUp,
                  curve: Curves.easeInOut,
                  child: SecondPage(),
                ),);
              },
            ),
            RaisedButton(
              child: Text('PAge transition Demo'),
              onPressed: (){
                Navigator.push(context,PageTransition(
                  type: PageTransitionType.rotate,
                  curve: Curves.bounceInOut,
                  child: SecondPage(),
                ),);
              },
            ),
          ],
        ),
      ),
    );
  }
}



