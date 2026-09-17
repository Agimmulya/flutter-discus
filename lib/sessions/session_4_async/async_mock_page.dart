import 'package:flutter/material.dart';

class AsyncMockPage extends StatelessWidget {
  const AsyncMockPage({super.key});

  // Fungsi simulasi fetch data dari API
  Future<List<String>> _fetchDummyData() async {
    // Delay 2 detik untuk simulasi loading network
    await Future.delayed(const Duration(seconds: 2));
    
    // Simulasi pengembalian data JSON list
    return ['Item A', 'Item B', 'Item C', 'Item D', 'Item E'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sesi 4: Async & FutureBuilder')),
      body: FutureBuilder<List<String>>(
        future: _fetchDummyData(),
        builder: (context, snapshot) {
          // State 1: Sedang loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Fetching data dummy...'),
                ],
              ),
            );
          }
          
          // State 2: Terjadi error
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          
          // State 3: Data berhasil didapatkan
          final data = snapshot.data ?? [];
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(data[index]),
                subtitle: const Text('Data dari mock API'),
              );
            },
          );
        },
      ),
    );
  }
}
