import 'package:facebook_screen/modules/post_screen_web.dart';
import 'package:flutter/material.dart';

import 'modules/posts_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.minWidth.toInt() <=750)
              return FeedBack();
            return FacebookWeb();
          },

      ),
    );
  }
}
