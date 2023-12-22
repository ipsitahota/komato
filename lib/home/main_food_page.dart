import 'package:flutter/material.dart';
import 'package:flutter_kitchen/home/food_page_body.dart';
import 'package:flutter_kitchen/utils/colors.dart';
import 'package:flutter_kitchen/widgets/big_text.dart';
import 'package:flutter_kitchen/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
      child: Container(
        margin: const EdgeInsets.only(top: 45,bottom: 15),
        padding: const EdgeInsets.only(left: 20,right: 20),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
              children: [
               BigText(text: "India",color: AppColors.mainColor ,),
              Center(
                child: Row(
                  children: [
                SmallText(text: "Mumbai",color: Colors.black54,),
                const Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
              )
              ],
            ),
            Center(
              child: Container(
                width: 45,
                height: 45,
                // ignore: sort_child_properties_last
                child: const Icon(Icons.search,color: Colors.white),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor,
                 ),
              ),
            )
          ],
        ),
      ),
    ), 
          FoodPageBody() ,    
        ],
      ));
    }
}