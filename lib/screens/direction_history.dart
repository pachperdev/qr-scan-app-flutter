import 'package:flutter/material.dart';
import 'package:qr_scan/widgets/scan_tiles.dart';

class DirectionHistory extends StatelessWidget {
  const DirectionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScanTiles(
      tipo: 'http',
    );
  }
}
