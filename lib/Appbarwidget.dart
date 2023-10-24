import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';



PreferredSizeWidget AppbarWidget=AppBar(

  elevation: 0.0,
  backgroundColor: Color(0xFFF5F5F3),
  title: Text(
    "Food App",
    style: TextStyle(
      color: Color(0xffb70038),
    ),
  ),
  centerTitle: true,
  leading: InkWell(
    onTap: (){},
    child: Container(
      margin: EdgeInsets.all(9.0),
      decoration: iconsDecoration,
      child: Icon(Icons.menu,color: Colors.black,),

    ),
  ),
  actions: [
    InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.symmetric(horizontal: 9.0,vertical: 9.0),
        decoration: iconsDecoration,
        child: Icon(Icons.notifications_none,color: Colors.black,),
      ),
    )
  ],
);