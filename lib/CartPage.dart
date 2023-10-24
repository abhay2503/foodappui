import 'package:flutter/material.dart';
import 'package:foodapp/Appbarwidget.dart';
import 'package:foodapp/constant.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppbarWidget ,
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 20,),
    Text(
    'Order List',
    style: HeadingTextstyle.copyWith(
    fontSize: 25
    ),
    ),
    SizedBox(height: 30,),
    CartItems(
    name: "Hot Pizza",
    imageurl: "pizza.png",
    aboutname: "Taste your Hot Pizza",
    itemnumber: "3",
    ),
    SizedBox(height: 20,),
    CartItems(
    name: "Spicy Burger",
    imageurl: "burger.png",
    aboutname: "Taste your Spicy Burger",
    itemnumber: "1",
    ),
    SizedBox(height: 20,),
    CartItems(
    name: "Cold Drink",
    imageurl: "softdrinks.png",
    aboutname: "Drink Your Chilled Drinks",
    itemnumber: "3",
    ),
    SizedBox(height: 16,),

    Padding(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Container(

    padding: EdgeInsets.all(20),
    decoration: iconsDecoration.copyWith(
    borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
    children: [
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    'Items',
    style: TextStyle(fontSize: 20),
    ),
    Text(
    '10',
    style: TextStyle(fontSize: 20),
    )
    ],
    ),
    Divider(
    color: Colors.black,
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    'Sub-Total',
    style: TextStyle(fontSize: 20),
    ),
    Text(
    '\$60',
    style: TextStyle(fontSize: 20),
    )
    ],
    ),
    Divider(
    color: Colors.black,
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    'Delivery',
    style: TextStyle(fontSize: 20),
    ),
    Text(
    '\$70',
    style: TextStyle(fontSize: 20),
    )
    ],
    ),
    Divider(
    color: Colors.black,
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    'Total',
    style: TextStyle(fontSize: 20),
    ),
    Text(
    '\$130',
    style: TextStyle(fontSize: 20,color: Colors.red),
    )
        ],
      ),
      ]
    ),
    ),
    )
            ]
        )
    )
    ),
    );

  }
}

class CartItems extends StatelessWidget {
  const CartItems({required this.name,required this.imageurl,
    required this.aboutname,required this.itemnumber});

  final String name;
  final String imageurl;
  final String aboutname;
  final String itemnumber;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
      width: 390,
      height: 100,
      decoration: iconsDecoration.copyWith(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          InkWell(
            onTap: (){

            },
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                "images/"+imageurl,
                height: 100,
                width: 110,
              ),
            ),
          ),
          // SizedBox(width: 7,),
          Container(
            width: 160,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  aboutname,
                  style: TextStyle(
                    fontSize: 14,
                    // fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  '\$10',
                  style: TextStyle(
                      fontSize: 17,
                      color:  Colors.red,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
          ),
          // SizedBox(width: 7,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 26,
                  ),
                  Text(itemnumber,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                  Icon(
                    Icons.minimize ,
                    color: Colors.white,
                    size: 26,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),

    );
  }
}
