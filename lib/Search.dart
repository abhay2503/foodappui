import 'package:flutter/material.dart';
import 'package:foodapp/constant.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration:iconsDecoration.copyWith(
          borderRadius: BorderRadius.circular(20),
        ) ,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search,color: Colors.red,),
              Expanded(
                child: Container(

                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "What would you like to have?",
                          hintStyle: TextStyle(
                              fontSize: 15
                          ),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ),
              Icon(Icons.filter_list)
            ],
          ),
        ),
      ),
    );
  }
}
