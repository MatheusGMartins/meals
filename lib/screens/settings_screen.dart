import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: const Text(
            'Configurações',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Configurações'),
      ),
    );
  }
}
