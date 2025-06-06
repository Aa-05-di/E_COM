import 'package:ecom/items/menu_card.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
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
        backgroundColor: Colors.amber[700], // Vibrant amber
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search Bar
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.amber[200], // Softer yellow
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 9,
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, color: Colors.white),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Items
            MenuCard(
              photo: "https://pngimg.com/uploads/iphone16/iphone16_PNG39.png",
              productName: "iPhone 16 Pro 256GB",
              price: "\$1440",
              desc: "4 left",
            ),
            MenuCard(
              photo:
                  "https://w7.pngwing.com/pngs/910/21/png-transparent-laptop-dell-xps-15-computer-monitors-personal-computer-laptops-electronics-netbook-computer-thumbnail.png",
              productName: "Dell XPS 15",
              price: "\$1220",
              desc: "Available now",
            ),
            MenuCard(
              photo:
                  "https://img.freepik.com/premium-photo/bluetooth-wireless-headphones-modern-devices-listening-music-studio-shot-copy-space_300903-1326.jpg?ga=GA1.1.1542784214.1748850759&semt=ais_items_boosted&w=740",
              productName: "Sony WH-1000XM5",
              price: "\$380",
              desc: "Top-rated noise cancelling",
            ),
            MenuCard(
              photo:
                  "https://img.freepik.com/free-photo/rendering-smart-home-device_23-2151039316.jpg?ga=GA1.1.1542784214.1748850759&semt=ais_items_boosted&w=740",
              productName: "Fossil Gen 6 Smartwatch",
              price: "\$295",
              desc: "3 left in stock",
            ),
            MenuCard(
              photo:
                  "https://toppng.com/uploads/preview/eos-m50-canon-eos-m50-11563133233tqprfck7ne.png",
              productName: "Canon EOS M50 Mark II",
              price: "\$699",
              desc: "Bestseller for creators",
            ),
          ],
        ),
      ),
    );
  }
}
