import 'package:flutter/material.dart';
import 'package:qr_scan/widgets/scan_tiles.dart';

class MapasHistory extends StatelessWidget {
  const MapasHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScanTiles(
      tipo: 'geo',
    );
  }
}
