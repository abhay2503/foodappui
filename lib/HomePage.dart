import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/Appbarwidget.dart';
import 'package:foodapp/Search.dart';
import 'package:foodapp/dishesmodel.dart';
import 'package:foodapp/Popularfood.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodapp/CartPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppbarWidget,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 13 ,),
            Search(),
            SizedBox(height: 4 ,),
            Topmenu(),
            SizedBox(height: 13 ,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Popular Foods',
                style: HeadingTextstyle,
              ),
            ),
            SizedBox(height:13 ,),
            popularFood(),
            SizedBox(height: 13,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Best Foods',
                style: HeadingTextstyle,
              ),
            ),
            SizedBox(height:13 ,),
            BestFoods()
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: iconsDecoration.copyWith(
            borderRadius: BorderRadius.circular(25)
        ),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
          },
          child: Icon(
            Icons.shopping_cart,
            size: 20,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}



class BestFoods extends StatefulWidget {
  const BestFoods({super.key});

  @override
  State<BestFoods> createState() => _BestFoodsState();
}

class _BestFoodsState extends State<BestFoods> {
  List<Map<String,String>> bestFood=BestFood.dish;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: bestFood.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
                child: BestTiles(
                  name:bestFood[index]["name"]!,
                  imageurl:bestFood[index]["imageUrl"]!,
                  aboutname:bestFood[index]["about"]!,
                  rating:bestFood[index]["rating"]!,
                ),
              )
            ],
          );
        }
      ),
    );

  }
}


class BestTiles extends StatefulWidget {
  const BestTiles({required this.name,required this.imageurl,
    required this.aboutname,required this.rating});

  final String name;
  final String imageurl;
  final String aboutname;
  final String rating;

  @override
  State<BestTiles> createState() => _BestTilesState();
}

class _BestTilesState extends State<BestTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 150,
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
                "images/"+widget.imageurl,
                height: 100,
                width: 130,
              ),
            ),
          ),
          Container(
            width: 160,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  widget.aboutname,
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                RatingBar.builder(
                  initialRating:double.parse(widget.rating) ,
                  minRating: 1,
                  itemSize: 15,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  '\$10',
                  style: TextStyle(
                      fontSize: 18,
                      color:  Colors.red,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 26,
                ),
                Icon(
                  Icons.shopping_cart ,
                  color: Colors.red,
                  size: 26,
                )
              ],
            ),
          )
        ],
      ),
    );

  }
}

class popularFood extends StatelessWidget {
   popularFood({super.key});

  List<Map<String,String>> popularmenu=Popular.dish;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: ListView.builder(

          shrinkWrap: true,

          scrollDirection: Axis.horizontal,
          itemCount: popularmenu.length,
          itemBuilder: (context,item){
            return  Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
                  child: PopularTitles(
                      name:popularmenu[item]["name"]!,
                      imageurl:popularmenu[item]["imageUrl"]!,
                      aboutname:popularmenu[item]["about"]!
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


class PopularTitles extends StatefulWidget {
  const PopularTitles({required this.name,required this.imageurl,
    required this.aboutname});

  final String name;
  final String imageurl;
  final String aboutname;

  @override
  State<PopularTitles> createState() => _PopularTitlesState();
}

class _PopularTitlesState extends State<PopularTitles> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 170,
        height: 250,
        padding: EdgeInsets.all(8),
        decoration: iconsDecoration.copyWith(
          borderRadius: BorderRadius.circular(10),
        ),
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset("images/"+widget.imageurl,height: 130 ,),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    // padding: EdgeInsets.only(left: 5, top: 5),
                    child: Text(widget.name,
                        style: TextStyle(
                            color: Color(0xFF6e6e71),
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 5),
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFfae3e2),
                              blurRadius: 25.0,
                              offset: Offset(0.0, 0.75),
                            ),
                          ]),
                      child: Icon(
                        Icons.near_me,
                        color: Color(0xFFfb3132),
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0,),
              Text(
                widget.aboutname,
                style: TextStyle(
                    fontSize: 12
                ),
              ),
              SizedBox(height: 12.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$10",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.favorite_border,
                    color: Colors.red,
                    size: 26,)
                ],
              )
            ],
          ),
        )


    );
  }
}



