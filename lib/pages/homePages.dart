import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../attributes.dart';
import '../items/categoryItem.dart';
import '../items/itemProduct.dart';
import 'cartPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categoryImage = [
    "assets/images/current/photo_2023-01-25_19-56-23.jpg",
    "assets/images/current/photo_2023-01-25_19-56-23 (2).jpg",
    "assets/images/current/photo_2023-01-25_19-56-24.jpg",
    "assets/images/current/photo_2023-01-25_19-56-24 (2).jpg"
  ];
  List<String> categoryName = [
    "Oculus",
    "Shop LaptopsTablets",
    "Women's fashion",
    "Beauty Picks"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          )
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.mic_none,
                color: Colors.black,
              )
          ),
          IconButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CardPage()),
                );
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.04,
          )
        ],
        title: Image(
          height: MediaQuery.of(context).size.height*0.04,
          image: const AssetImage("assets/images/current/photo_2023-01-25_19-56-10.jpg"),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color> [
                Colors.tealAccent.shade400.withOpacity(0.5),
                Colors.tealAccent.shade200.withOpacity(0.7),
                Colors.tealAccent.shade100.withOpacity(0.9),
              ]
            )
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height*0.08,),
            child: const Padding(padding: EdgeInsets.all(10),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  // isCollapsed: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,),
                    filled: true,
                  fillColor: Colors.white,
                  hintText: "What are you looking?",
                  prefixIcon: Icon(Icons.search,color: Colors.black)
                ),
              ),
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.tealAccent.shade200.withOpacity(0.4),
              height: MediaQuery.of(context).size.height*0.06,
              child: Row(
                children: const [
                  Expanded(
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                    flex: 1,
                  ),
                  Expanded(
                      child: Text("Deliver to Uzbekistan",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*1.05,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.withOpacity(0.8),
                        Colors.blue.withOpacity(0.6),
                        Colors.grey.withOpacity(0.4),
                        Colors.grey.withOpacity(0.2),
                      ]
                    )
                  ),
                 child: Row(
                   children: [
                     const Expanded(
                         child: Text("We ship over 45 million products around the world",
                         style: TextStyle(fontSize: 18,color: Colors.white),
                         )
                     ),
                     Expanded(child: Image.asset("assets/images/current/photo_2023-01-25_19-56-24 (4).jpg",
                     height: MediaQuery.of(context).size.height*0.36,
                     ))
                   ],
                 )
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width*0.58,
                    bottom: MediaQuery.of(context).size.width*0.02,
                    left: MediaQuery.of(context).size.width*0.01,
                    right: MediaQuery.of(context).size.width*0.01,
                  ),
                  height: MediaQuery.of(context).size.width*1.05,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryImage.length,
                      itemBuilder: (context,index){
                        return categoryItem(
                          context,
                          categoryName[index], categoryImage[index]);
                      })
                )
              ],
            ),
            SizedBox(
              height: 495 *3,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categoryList.length,
                  itemBuilder: (context,index){
                    return itemProduct(context,categoryList[index]);
                  }),
            )
          ],
        )
      ),
    );
  }
}
