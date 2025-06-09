import 'package:ecom/items/product_model.dart';
import 'package:ecom/pages/product_details.dart';
import 'package:ecom/pages/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Product(
      photo: "https://pngimg.com/uploads/iphone16/iphone16_PNG39.png",
      productName: "iPhone 16 Pro 256GB",
      price: "\$1440",
      desc: "4 lef",
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
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Commerce App",
      theme: ThemeData.dark(useMaterial3: true),
      home: ProductDetails(product: products),
      routes: {'/register': (context) => const RegistrationPage()},
    );
  }
}
