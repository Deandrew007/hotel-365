import 'package:flutter/material.dart';

//textstyles
final headerStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

final cityTitleStyle = TextStyle(fontSize: 24, color: Colors.white);

final titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
final subtitleStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black38);


//Shape
final roundedRect16 = RoundedRectangleBorder(
  borderRadius: BorderRadiusDirectional.circular(16),
  side: BorderSide(width: 0.1, color: Colors.black),
);
final roundedRect12 = RoundedRectangleBorder(
  borderRadius: BorderRadiusDirectional.circular(12),
);