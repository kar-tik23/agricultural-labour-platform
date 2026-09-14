import 'package:flutter/material.dart';

import 'screens/role_selection_screen.dart';

void main() {
  runApp(const AgriculturalLabourApp());
}

class AgriculturalLabourApp extends StatelessWidget {
  const AgriculturalLabourApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agricultural Labour Platform',
      debugShowCheckedModeBanner: false,
      home: const RoleSelectionScreen(),
    );
  }
}