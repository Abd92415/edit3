import 'package:graduation_project/views/home/buyerHome/component/category/pageCategory/allcategory.dart';
import 'package:graduation_project/views/home/buyerHome/component/category/pageCategory/clothes.dart';
import 'package:graduation_project/views/home/buyerHome/component/category/pageCategory/food.dart';
import 'package:graduation_project/views/home/buyerHome/component/category/pageCategory/handMade.dart';
import 'package:graduation_project/views/home/buyerHome/component/category/pageCategory/parfune.dart';
import 'package:graduation_project/views/home/buyerHome/component/category/pageCategory/sweet.dart';

import '../../../../../services/themes/app_color.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  static List<String> categories = [
    'All',
    'Food',
    'Clothes',
    'Parfune',
    'Sweet',
    'Hand Made'
  ];
  List<Widget> pageCategory = const [
    AllCategory(),
    FoodCategory(),
    ClothesCategory(),
    ParfuneCategory(),
    SweetCategory(),
    HandMadeCategory()
  ];
  // final List<Widget> _page = const [PageAll(), PageFood(), PageClothes()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // SizedBox(
          //   height: 50,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: categories.length,
          //     itemBuilder: (context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(
          //           onPressed: () {
          //
          //             String selectedCategory = categories[index];
          //           },
          //           child: Text(categories[index]),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Container(
            color: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) => builderCategory(index),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: pageCategory[selectedIndex],
          ),
        ],
      ),
    );
  }

//* container containt category list
  Widget builderCategory(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index
                      ? Colors.white
                      : AppColors.kTextlightColor),
            ),
            //*this line under category before edit
            Container(
              margin: const EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.white : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
