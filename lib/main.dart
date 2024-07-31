import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // ThemeDataを取得
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
