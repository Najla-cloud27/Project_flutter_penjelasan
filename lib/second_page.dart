// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Page")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Get.back();
//           },
//           child: Text("Kembali"),
//         ),
//       ),
//     );
//   }
// }

// KODDE PART 9
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Kedua")),
      body: const Center(
        child: Text(
          "Berhasil pindah halaman setelah klik OK!",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
