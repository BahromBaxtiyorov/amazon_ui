import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../items/seemoreItem.dart';
import '../producModel/categoryModel.dart';

class SeemorePage extends StatefulWidget {
  SeemorePage({required this.item, Key? key}) : super(key: key);
  CategoryModel item;

  @override
  State<SeemorePage> createState() => _SeemorePageState();
}

class _SeemorePageState extends State<SeemorePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text( widget.item.categoryName,),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return seemoreItem(context: context,
              product: widget.item.products[index],
            );
          }
        )
      ),
    );
  }
}