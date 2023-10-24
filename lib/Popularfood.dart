import 'package:flutter/material.dart';
import 'package:foodapp/dishesmodel.dart';
import 'package:foodapp/constant.dart';


class Topmenu extends StatelessWidget {
  Topmenu({super.key});


  List<Map<String,String>> menus=TopDishes.dish;


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menus.length,
        itemBuilder: (context,item){
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
            child: TopmenuTitles(
                name:menus[item]["name"]!,
                imageurl:menus[item]["imageUrl"]!
            ),
          );
        },
      ),
    );
  }
}



class TopmenuTitles extends StatefulWidget {
  const TopmenuTitles({required this.name,required this.imageurl});

  final String name;
  final String imageurl;

  @override
  State<TopmenuTitles> createState() => _TopmenuTilesState();
}

class _TopmenuTilesState extends State<TopmenuTitles> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(widget.imageurl);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: iconsDecoration.copyWith(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset(
            "images/"+widget.imageurl,
            width: 60,
            height: 60,
          ),
        ),
        Text(
            widget.name,
            style: TextStyle(
                color: Color(0xFF6e6e71),
                fontSize: 17,
                fontWeight: FontWeight.w400)
        )
      ],
    );
  }
}
