import 'package:flutter/material.dart';
import 'package:graduation_project/Models/seller_model.dart';
import 'package:graduation_project/views/home/buyerHome/component/category/category.dart';
import 'item_card.dart';
import 'package:graduation_project/services/Firebase/item_firestore.dart';
import 'package:graduation_project/services/Firebase/seller_firestore.dart';
import 'package:graduation_project/Models/item_model.dart';
import 'package:provider/provider.dart';

class HomePageBuyer extends StatelessWidget {
  const HomePageBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Categories(),
    );
  }
}
