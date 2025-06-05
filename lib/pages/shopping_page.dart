import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Shop Here",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[200],
      ),
      body: Column(
        children: [
          //Search Bar
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                color: Colors.deepOrange[300],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 9,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //Items
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Card(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
              color: Colors.white,
              elevation: 4,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.network(
                      "https://pngimg.com/uploads/iphone16/small/iphone16_PNG39.png",
                      width: 110,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Iphone 16 256gB"),
                      Text("\$1400"),
                      Text("Chooper"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
