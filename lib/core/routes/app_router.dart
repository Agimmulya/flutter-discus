import 'package:flutter/material.dart';
import 'app_routes.dart';

// Import semua halaman (screens) yang akan didaftarkan ke dalam router
import '../../main.dart'; // Untuk MainMenuPage
import '../../sessions/session_1_state/state_basics_page.dart';
import '../../sessions/session_2_layout/layout_basics_page.dart';
import '../../sessions/session_3_stack/stack_assets_page.dart';
import '../../sessions/session_4_async/async_mock_page.dart';
import '../../sessions/session_5_theme/theme_showcase_page.dart';

class AppRouter {
  // Fungsi ini dipanggil otomatis oleh Flutter saat ada aksi Navigator.pushNamed
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const MainMenuPage());
      case AppRoutes.session1:
        return MaterialPageRoute(builder: (_) => const StateBasicsPage());
      case AppRoutes.session2:
        return MaterialPageRoute(builder: (_) => const LayoutBasicsPage());
      case AppRoutes.session3:
        return MaterialPageRoute(builder: (_) => const StackAssetsPage());
      case AppRoutes.session4:
        return MaterialPageRoute(builder: (_) => const AsyncMockPage());
      case AppRoutes.session5:
        return MaterialPageRoute(builder: (_) => const ThemeShowcasePage());
      default:
        // Halaman Fallback (404 Not Found) jika rute salah ketik atau belum dibuat
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: Center(
              child: Text('Halaman untuk rute ${settings.name} tidak ditemukan.'),
            ),
          ),
        );
    }
  }
}
