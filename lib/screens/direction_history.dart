import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/provider/scan_list_provider.dart';

class DirectionHistory extends StatelessWidget {
  const DirectionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    // return const Center(
    //   child: Text('kaaka'),
    // );
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.home),
        title: Text(scans[index].valor.toString()),
        subtitle: Text(scans[index].id.toString()),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
