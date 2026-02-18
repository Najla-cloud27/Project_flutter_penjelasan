// KODE PART 6
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'home_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
//   }
// }

// KODE PART 7
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'home_page.dart';
// import 'product_page.dart';
// import 'detail_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       getPages: [
//         GetPage(name: '/', page: () => HomePage()),
//         GetPage(name: '/product', page: () => ProductPage()),
//         GetPage(name: '/detail/:id', page: () => DetailPage()),
//       ],
//     );
//   }
// }

// PART 8
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'home_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Part-8 - Snack Bar",
//       home: HomePage(),
//     );
//   }
// }

// KODE PART 9
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Part 9 - Dialog",
      home: const HomePage(),
    );
  }
}
