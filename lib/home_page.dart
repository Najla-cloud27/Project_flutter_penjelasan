// KODE PART 6
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'second_page.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Page")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SecondPage()),
//                 );
//               },
//               child: Text("Navigator Push"),
//             ),

//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: () {
//                 Get.to(SecondPage());
//               },
//               child: Text("Get.to"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// KODE PART 7
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Page")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Get.toNamed('/product');
//           },
//           child: Text("All Products"),
//         ),
//       ),
//     );
//   }
// }

// PART 8
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   // SnackBar biasa menggunakan ScaffoldMessenger membutuhkan context dan memiliki opsi kustomisasi yang terbatas
//   void showNormalSnackBar(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: const Text(
//           "Ini adalah SnackBar biasa menggunakan ScaffoldMessenger",
//         ),
//         duration: const Duration(seconds: 3),
//         backgroundColor: Colors.blue,
//         action: SnackBarAction(
//           label: "Tutup",
//           textColor: Colors.white,
//           onPressed: () {
//             print("SnackBar Biasa Ditutup");
//           },
//         ),
//       ),
//     );
//   }

//   // SnackBar dengan GetX jauh lebih mudah dan banyak opsi kustomisasi tanpa perlu context
//   void showGetSnackBar() {
//     Get.snackbar(
//       "Berhasil",
//       "Ini adalah SnackBar menggunakan GetX",
//       duration: const Duration(seconds: 3),
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.orange,
//       colorText: Colors.white,
//       icon: const Icon(Icons.check_circle, color: Colors.white),
//       borderColor: Colors.red,
//       borderWidth: 2,
//       borderRadius: 20,
//       margin: const EdgeInsets.all(10),
//       isDismissible: true,
//       forwardAnimationCurve: Curves.easeOutBack,
//       reverseAnimationCurve: Curves.easeIn,
//       onTap: (_) {
//         print("SnackBar GetX diklik");
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Part 8 - SnackBar Flutter & GetX"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 showNormalSnackBar(context);
//               },
//               child: const Text("Tampilkan SnackBar Biasa"),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: () {
//                 showGetSnackBar();
//               },
//               child: const Text("Tampilkan SnackBar GetX"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// KODE PART 9
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // 1️⃣ SHOW DIALOG (FLUTTER BIASA)

  void showNormalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Judul Dialog"),
          content: const Text(
            "Ini adalah dialog menggunakan showDialog Flutter.",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Batal"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  // ===================================
  // 2️⃣ GET DEFAULT DIALOG
  // ===================================
  void showDefaultDialog() {
    Get.defaultDialog(
      title: "Konfirmasi",
      middleText: "Apakah kamu yakin ingin melanjutkan?",
      textCancel: "Batal",
      textConfirm: "OK",
      confirmTextColor: Colors.white,
      onCancel: () {
        print("Tombol batal ditekan");
      },
      onConfirm: () {
        Get.back(); // Tutup dialog
        Get.to(const SecondPage()); // Pindah halaman
      },
      backgroundColor: Colors.orange[100],
      radius: 20,
      barrierDismissible: false,
    );
  }

  // ===================================
  // 3️⃣ GET DIALOG (CUSTOM)
  // ===================================
  void showCustomDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text("Custom Dialog"),
        content: const Text("Ini adalah dialog custom menggunakan Get.dialog"),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Tutup"),
          ),
        ],
      ),
    );
  }

  // ===================================
  // 4️⃣ GET GENERAL DIALOG
  // ===================================
  void showGeneralDialog() {
    Get.generalDialog(
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "General Dialog",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text("Ini adalah dialog menggunakan Get.generalDialog"),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Tutup"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Part 9 - Dialog Flutter & GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => showNormalDialog(context),
                child: const Text("ShowDialog (Flutter Biasa)"),
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: showDefaultDialog,
                child: const Text("Get.defaultDialog"),
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: showCustomDialog,
                child: const Text("Get.dialog (Custom)"),
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: showGeneralDialog,
                child: const Text("Get.generalDialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
