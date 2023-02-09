import 'package:flutter/material.dart';
import 'package:qr_scan/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

Future launchURL(BuildContext context, ScanModel scan) async {
  final Uri url = Uri.parse(scan.valor);
  if (scan.tipo == 'Web') {
    if (scan.tipo == 'Web') {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  } else if (scan.tipo == 'Texto') {
    final Uri url = Uri.parse('https://www.google.com/search?q=${scan.valor}');
    if (scan.tipo == 'Texto') {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  } else {
    Navigator.pushNamed(context, 'map', arguments: scan);
  }
}
