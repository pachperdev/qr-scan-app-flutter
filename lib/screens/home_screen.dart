import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/models/scan_model.dart';
import 'package:qr_scan/provider/db_provider.dart';
import 'package:qr_scan/provider/ui_provider.dart';
import 'package:qr_scan/screens/screens.dart';
import 'package:qr_scan/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever)),
        ],
      ),
      body: const _HomeScreenBody(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody();

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final curentIndex = uiProvider.selectedMenuOpt;

    // final tempScan = ScanModel(valor: 'https://github.com/pachperdev');
    // DBProvider.db.nuevoScan(tempScan);
    // DBProvider.db.getScanById(10).then((scan) => print(scan!.valor));
    DBProvider.db.getScanByTipo('http').then((print));

    switch (curentIndex) {
      case 0:
        return const MapasHistory();
      case 1:
        return const DirectionHistory();
      default:
        const MapasHistory();
    }
    return const Center();
  }
}
