import 'package:flutter/material.dart';
import 'service_locator.dart';
import 'package:hotel365/ui/views/explore_page.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flights Over Feelings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Explore(),
    );
  }
}
