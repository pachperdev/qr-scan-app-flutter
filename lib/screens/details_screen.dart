import 'package:flutter/material.dart';
import 'package:qr_scan/models/scan_model.dart';
import 'package:qr_scan/utils/utils.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScanModel scan =
        ModalRoute.of(context)!.settings.arguments as ScanModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(scan.tipo.toString()),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('QR Code Scan:'),
            Text(scan.valor, style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            const Text('Tipo:'),
            Text(scan.tipo.toString(), style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 15),
            const Text('ID:'),
            Text(scan.id.toString(), style: const TextStyle(fontSize: 25)),
            const SizedBox(height: 20),
            ElevatedButton(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      scan.tipo == 'Web' ? Icons.public : Icons.location_pin,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      'Ver ${scan.tipo.toString()}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                launchURL(context, scan);
              },
            ),
          ],
        ),
      ),
    );
  }
}
