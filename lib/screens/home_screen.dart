import 'package:flutter/material.dart';
import 'package:qr_scan/widgets/scan_button.dart';
import 'package:qr_scan/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          )
        ],
      ),
      body: const Center(child: Text('Home Screen')),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
