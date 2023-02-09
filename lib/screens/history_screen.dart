import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/provider/scan_list_provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: scans.length,
        itemBuilder: (_, i) => Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.red,
              ),
              onDismissed: (DismissDirection direction) {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarScanPorId(scans[i].id!);
              },
              child: ListTile(
                leading: Icon(
                  scans[i].tipo == 'Web' || scans[i].tipo == 'Texto'
                      ? Icons.public
                      : Icons.location_pin,
                ),
                title: Text(scans[i].valor),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tipo: ${scans[i].tipo.toString()}'),
                  ],
                ),
                trailing:
                    const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
                // onTap: () => launchURL(context, scans[i]),
                onTap: () {
                  Navigator.pushNamed(context, 'details', arguments: scans[i]);
                },
              ),
            ));
  }
}
