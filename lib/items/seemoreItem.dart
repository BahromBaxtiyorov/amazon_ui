import 'package:amazon_ui/attributes.dart';
import 'package:amazon_ui/producModel/productModel.dart';
import 'package:flutter/material.dart';

import '../pages/cartPage.dart';

Widget seemoreItem({
  required BuildContext context,
  required ProductModel product,


}) {
  return Stack(
    fit: StackFit.expand,
   children: [
     Container(
       height: 150,
       width: double.infinity,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage(
               product.image,
             ),
           )
       ),
     ),
     Positioned(
       right: 5,
       top:5,
       child: CircleAvatar(
         child: IconButton(
             onPressed: (){
               cartList.add(product);
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                   backgroundColor: Colors.green,
                   content: Text("Siz bu mahsulotni savatga qo`shdiz",),
               duration: const Duration(seconds: 1)));
             },
             icon: Icon(Icons.add)
         ),
       ),
     ),
     Positioned(
       left: 10,
       bottom:10,
       child: Text(product.cost.toString()),
     ),
   ],
      );
}