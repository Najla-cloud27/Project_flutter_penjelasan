import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final params = Get.parameters;

    final id = params['id'] ?? "Tidak ada ID";
    final name = params['name'] ?? "Tidak ada Nama";
    final size = params['size'] ?? "Tidak ada Size";

    return Scaffold(
      appBar: AppBar(title: Text("Detail Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product ID: $id"),
            Text("Product Name: $name"),
            Text("Size: $size"),
          ],
        ),
      ),
    );
  }
}
