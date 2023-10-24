import 'package:flutter/material.dart';

BoxDecoration iconsDecoration=BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(100),
    boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 7,
          spreadRadius: 2,
          offset: Offset(0,3)
      )
    ]
);
TextStyle HeadingTextstyle=TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
);
