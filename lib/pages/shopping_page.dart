import 'package:ecom/items/menu_card.dart';
import 'package:ecom/items/product_model.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        photo: "https://pngimg.com/uploads/iphone16/iphone16_PNG39.png",
        productName: "iPhone 16 Pro 256GB",
        price: "\$1440",
        desc: "4 left",
        details: '''

⚙️ Specifications:
6.3" Super Retina XDR OLED
A18 Pro Chip
256GB NVMe Storage
48MP Triple Camera with LiDAR
iOS 18

🎯 Key Features:
Titanium Frame
ProMotion (120Hz)
USB-C Port
Dynamic Island
Face ID

📦 Included:
iPhone 16 Pro
USB-C to USB-C Cable
Documentation

🔒 1-Year Apple Warranty
''',
      ),
      Product(
        photo:
            "https://w7.pngwing.com/pngs/910/21/png-transparent-laptop-dell-xps-15-computer-monitors-personal-computer-laptops-electronics-netbook-computer-thumbnail.png",
        productName: "Dell XPS 15",
        price: "\$1220",
        desc: "Available now",
      ),
      Product(
        photo:
            "https://img.freepik.com/premium-photo/bluetooth-wireless-headphones-modern-devices-listening-music-studio-shot-copy-space_300903-1326.jpg?ga=GA1.1.1542784214.1748850759&semt=ais_items_boosted&w=740",
        productName: "Sony WH-1000XM5",
        price: "\$380",
        desc: "Top-rated noise cancelling",
      ),
      Product(
        photo:
            "https://img.freepik.com/free-photo/rendering-smart-home-device_23-2151039316.jpg?ga=GA1.1.1542784214.1748850759&semt=ais_items_boosted&w=740",
        productName: "Fossil Gen 6 Smartwatch",
        price: "\$295",
        desc: "3 left in stock",
      ),
      Product(
        photo:
            "https://toppng.com/uploads/preview/eos-m50-canon-eos-m50-11563133233tqprfck7ne.png",
        productName: "Canon EOS M50 Mark II",
        price: "\$699",
        desc: "Bestseller for creators",
      ),
    ];
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
            //Search_Bar
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.grey[400], // Softer yellow
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
            //Scroll_Bar
            SizedBox(
              height: 42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  _buildCategoryChip("Mobiles"),
                  _buildCategoryChip("Laptops"),
                  _buildCategoryChip("Headphones"),
                  _buildCategoryChip("Smartwatches"),
                  _buildCategoryChip("Cameras"),
                  _buildCategoryChip("Chargers"),
                ],
              ),
            ),
            //Items
            for (var product in products) MenuCard(product: product),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.amber.shade300),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14.5,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }
}
