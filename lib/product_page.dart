import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/detail/1?name=Jaket&size=XL');
            },
            child: Text("Product 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/detail/2?name=Kaos Kaki&size=Jumbo');
            },
            child: Text("Product 2"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/detail/3?name=Sendal&size=45');
            },
            child: Text("Product 3"),
          ),
        ],
      ),
    );
  }
}
