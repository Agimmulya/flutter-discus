import 'package:flutter/material.dart';

class LayoutBasicsPage extends StatelessWidget {
  const LayoutBasicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sesi 2: Layouting')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ini adalah Column',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Container(color: Colors.blue[100], height: 50, child: const Center(child: Text('Item 1 di Column'))),
            const SizedBox(height: 10),
            Container(color: Colors.blue[200], height: 50, child: const Center(child: Text('Item 2 di Column'))),
            
            const SizedBox(height: 40),
            
            const Text(
              'Ini adalah Row',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.green[100], width: 100, height: 50, child: const Center(child: Text('Kiri'))),
                Container(color: Colors.green[200], width: 100, height: 50, child: const Center(child: Text('Tengah'))),
                Container(color: Colors.green[300], width: 100, height: 50, child: const Center(child: Text('Kanan'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
