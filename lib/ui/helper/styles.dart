import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BoxDecoration toplrbd = BoxDecoration(
  // borderRadius: BorderRadius.circular(30.0),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
  ),
  boxShadow: [
    BoxShadow(color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
  ],
  color: Colors.white,
);

BoxDecoration homeDec = BoxDecoration(
  // borderRadius: BorderRadius.circular(30.0),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
  ),
  color: Colors.white,
);

BoxDecoration overview = BoxDecoration(
  // borderRadius: BorderRadius.circular(30.0),
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0)],

  color: Colors.white,
);

TextStyle headingStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 20.0,
  color: Colors.blueGrey,
);

BoxDecoration currentBalanceBD = BoxDecoration(
  // borderRadius: BorderRadius.circular(30.0),
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0)],
  color: Colors.white,
);

BoxDecoration earningSummaryBD = BoxDecoration(
  // borderRadius: BorderRadius.circular(30.0),
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0)],
  color: Colors.white,
);

BoxDecoration earningSummaryBDL = BoxDecoration(
  // borderRadius: BorderRadius.circular(30.0),
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0)],
  color: Colors.white,
);

TextStyle subtitle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: Colors.grey,
);

TextStyle numericBig = TextStyle(fontSize: 40, fontWeight: FontWeight.w600);
TextStyle numericMed = TextStyle(fontSize: 25, fontWeight: FontWeight.w600);
