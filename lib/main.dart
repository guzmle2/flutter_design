import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/pages/basic_page.dart';
import 'package:flutter_design/pages/buttons_page.dart';
import 'package:flutter_design/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll',
      routes: {
        'basic': (BuildContext context) => BasicPages(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
