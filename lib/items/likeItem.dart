import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../attributes.dart';
import '../producModel/productModel.dart';

Widget likeItem({
  required BuildContext context,
  required ProductModel product,
  required void Function() delete,
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