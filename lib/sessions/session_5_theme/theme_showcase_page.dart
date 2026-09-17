import 'package:flutter/material.dart';

class ThemeShowcasePage extends StatelessWidget {
  const ThemeShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kita ambil data dari tema global
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Design System Showcase')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Halaman ini membuktikan bahwa seluruh UI otomatis mengikuti AppTheme tanpa perlu styling manual (hardcode).',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 24),

            // 1. Typography Showcase
            Text(
              'Typography',
              style: textTheme.titleLarge?.copyWith(color: colorScheme.primary),
            ),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              'Ini adalah Heading 1 (titleLarge)',
              style: textTheme.titleLarge?.copyWith(color: colorScheme.primary),
            ),
            const SizedBox(height: 8),
            Text(
              'Ini adalah Heading 2 (titleMedium)',
              style: textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Ini adalah Body Large (bodyLarge)',
              style: textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Ini adalah Body Small (bodyMedium)',
              style: textTheme.bodyMedium?.copyWith(color: colorScheme.primary),
            ),
            const SizedBox(height: 8),
            Text(
              'Ini adalah Caption (labelSmall)',
              style: textTheme.labelSmall,
            ),

            const SizedBox(height: 32),

            // 2. Color Palette Showcase
            Text(
              'Color Palette',
              style: textTheme.titleLarge?.copyWith(color: colorScheme.primary),
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildColorBox('Primary', colorScheme.primary, Colors.white),
                const SizedBox(width: 8),
                _buildColorBox(
                  'Secondary',
                  colorScheme.secondary,
                  Colors.white,
                ),
                const SizedBox(width: 8),
                _buildColorBox('Error', colorScheme.error, Colors.white),
              ],
            ),

            const SizedBox(height: 32),

            // 3. Component Showcase
            Text(
              'Components',
              style: textTheme.titleLarge?.copyWith(color: colorScheme.primary),
            ),
            const Divider(),
            const SizedBox(height: 8),

            // Card
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Ini adalah Card. Border radius dan warnanya otomatis ngikutin cardTheme global lho! Coba ubah di app_theme.dart, ini pasti ikut berubah.',
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
                TextButton(onPressed: () {}, child: const Text('Text')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorBox(String label, Color color, Color textColor) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
