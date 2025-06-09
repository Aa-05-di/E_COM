import 'package:ecom/core/menu_card.dart';
import 'package:ecom/data/product_model.dart';
import 'package:ecom/presentation/cart.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  String selectedTag = 'All';
  final TextEditingController search = TextEditingController();

  final List<Product> allProducts = [
    Product(
      tag: "Mobiles",
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
      tag: "Laptops",
      photo:
          "https://w7.pngwing.com/pngs/910/21/png-transparent-laptop-dell-xps-15-computer-monitors-personal-computer-laptops-electronics-netbook-computer-thumbnail.png",
      productName: "Dell XPS 15",
      price: "\$1220",
      desc: "Available now",
    ),
    Product(
      tag: "Headphones",
      photo:
          "https://img.freepik.com/premium-photo/bluetooth-wireless-headphones-modern-devices-listening-music-studio-shot-copy-space_300903-1326.jpg",
      productName: "Sony WH-1000XM5",
      price: "\$380",
      desc: "Top-rated noise cancelling",
    ),
    Product(
      tag: "Smartwatches",
      photo:
          "https://img.freepik.com/free-photo/rendering-smart-home-device_23-2151039316.jpg",
      productName: "Fossil Gen 6 Smartwatch",
      price: "\$295",
      desc: "3 left in stock",
    ),
    Product(
      tag: "Cameras",
      photo:
          "https://toppng.com/uploads/preview/eos-m50-canon-eos-m50-11563133233tqprfck7ne.png",
      productName: "Canon EOS M50 Mark II",
      price: "\$699",
      desc: "Bestseller for creators",
    ),
  ];

  List<String> tags = [
    "All",
    "Mobiles",
    "Laptops",
    "Headphones",
    "Smartwatches",
    "Cameras",
    "Chargers",
  ];

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = allProducts.where((product) {
      final matchesTag = selectedTag == 'All' || product.tag == selectedTag;
      final matchesSearch = product.productName.toLowerCase().contains(
        search.text.toLowerCase(),
      );
      return matchesTag && matchesSearch;
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_)=>Cart()));}, icon: Icon(Icons.shopping_cart,color: Colors.black,),)
        ],
        title: const Text(
          "Shop Here",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.grey[400],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 9,
                    ),
                    child: TextField(
                      controller: search,
                      onChanged: (value) {
                        setState(() {}); 
                      },
                      style: TextStyle(color: Colors.white),
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

            // Horizontal Scroll Tag Filter
            SizedBox(
              height: 42,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  final tag = tags[index];
                  final isSelected = tag == selectedTag;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTag = tag;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.amber : Colors.amber[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.amber.shade300),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          fontSize: 14.5,
                          fontWeight: FontWeight.w500,
                          color: isSelected ? Colors.black : Colors.black87,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Filtered Product Cards
            for (var product in filteredProducts) MenuCard(product: product),
          ],
        ),
      ),
    );
  }
}
