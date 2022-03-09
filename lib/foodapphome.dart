import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloproject/deatailpage.dart';



class FoodAppDemo extends StatefulWidget {
  FoodAppDemo({Key? key}) : super(key: key);

  @override
  State<FoodAppDemo> createState() => _FoodAppDemoState();
}

class _FoodAppDemoState extends State<FoodAppDemo> {

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Food App'),
          ),
          body: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Offers & Discounts",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.redAccent),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        height: 166,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
                          ),
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFF961F).withOpacity(0.7),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.menu_rounded),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 250,
                        width: 180,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          //border: Border.all(color: Colors.blue, width: 6.0),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.10),
                            topRight: Radius.circular(10.10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/burger.png")),
                            Text(
                              "Burger & Beer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MacDonald",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailPage();
                                    },
                                  ),
                                );
                              },
                              child: const Text('View details'),
                              color: Colors.blue,
                              elevation: 5,
                            ),

                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        height: 250,
                        width: 180,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          //border: Border.all(color: Colors.blue, width: 6.0),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.10),
                            topRight: Radius.circular(10.10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/burger.png"),),
                            Text(
                              "b meat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MacDonald",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailPage();
                                    },
                                  ),
                                );
                              },
                              child: const Text('View Details'),
                              color: Colors.blue,
                              elevation: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 220,
                        width: 180,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          //border: Border.all(color: Colors.blue, width: 6.0),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.10),
                            topRight: Radius.circular(10.10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/beyond-meat-mcdonalds.png")),
                            Text(
                              "Burger & Beer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MacDonald",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        height: 220,
                        width: 180,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          //border: Border.all(color: Colors.blue, width: 6.0),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.10),
                            topRight: Radius.circular(10.10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),),
                            Text(
                              "b meat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MacDonald",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),




              ],
            ) ,
          )

      ),

    );
  }
}
