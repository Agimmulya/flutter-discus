import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/app_router.dart';

// Perhatikan bahwa import halaman sesi 1-5 sudah BISA DIHAPUS dari file ini
// karena logika navigasinya sudah pindah sepenuhnya ke app_router.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fundamental',
      theme: AppTheme.lightTheme,
      // Mengubah properti home menjadi sistem routing terpusat
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Fundamental Training')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMenuCard(
            context,
            title: 'Sesi 1: State Basics',
            subtitle: 'Stateless vs StatefulWidget',
            icon: Icons.sync,
            routeName: AppRoutes.session1, // Mengirim route name, BUKAN Widget
          ),
          _buildMenuCard(
            context,
            title: 'Sesi 2: Layouting',
            subtitle: 'Column & Row',
            icon: Icons.view_sidebar,
            routeName: AppRoutes.session2,
          ),
          _buildMenuCard(
            context,
            title: 'Sesi 3: Stack & Assets',
            subtitle: 'Stack, Positioned, dan memuat gambar lokal',
            icon: Icons.layers,
            routeName: AppRoutes.session3,
          ),
          _buildMenuCard(
            context,
            title: 'Sesi 4: Async & FutureBuilder',
            subtitle: 'Simulasi fetching data API (Future.delayed)',
            icon: Icons.cloud_download,
            routeName: AppRoutes.session4,
          ),
          _buildMenuCard(
            context,
            title: 'Sesi 5: Design System',
            subtitle: 'Katalog Typography, Colors, dan Component dari AppTheme',
            icon: Icons.palette,
            routeName: AppRoutes.session5,
          ),
        ],
      ),
    );
  }

  // Parameter diubah dari `Widget page` menjadi `String routeName`
  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required String routeName,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(title, style: Theme.of(context).textTheme.titleLarge),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Implementasi navigasi bersih (Centralized Routing)
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
