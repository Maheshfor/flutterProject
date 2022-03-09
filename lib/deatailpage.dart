import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
            title: Text('Food App')
        ),
        body: Center(
          child: Container(
            height: 500,
            width:300,
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
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "MacDonald",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
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
                  child: const Text('Order Now'),
                  color: Colors.blue,
                  elevation: 5,
                ),

              ],
            ),
          ),

        ),
      ),

    );
  }
}