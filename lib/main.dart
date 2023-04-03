import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  // 2
  const GpsDoMundo({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GpsDoMundoTheme.dark();
    // TODO: Aplicar o widget da página inicial
    // 3
    return MaterialApp(
      theme: theme,
      title: 'GPS do Mundo',
      // 4
      home: const Home(),
    );
  }
}
