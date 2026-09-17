import 'package:flutter/material.dart';

class StackAssetsPage extends StatelessWidget {
  const StackAssetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sesi 3: Stack & Assets')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Container utama untuk gambar
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/logokurir.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => 
                    const Center(child: Text('Gambar tidak ditemukan.\nCek pubspec.yaml', textAlign: TextAlign.center,)),
                ),
              ),
            ),
            
            // Badge yang di-posisikan absolute menggunakan Positioned
            Positioned(
              top: -15,
              right: -15,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.local_shipping,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
