import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/provider/scan_list_provider.dart';

class ScanTiles extends StatelessWidget {
  final String tipo;

  const ScanTiles({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, i) => Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.redAccent,
              ),
              onDismissed: (DismissDirection direction) {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarScanPorId(scans[i].id!);
              },
              child: ListTile(
                leading: Icon(
                  tipo == 'http' ? Icons.home_outlined : Icons.map_outlined,
                ),
                title: Text(scans[i].valor),
                subtitle: Text(scans[i].id.toString()),
                trailing:
                    const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
              ),
            ));
  }
}
