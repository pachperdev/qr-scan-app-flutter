import 'package:flutter/material.dart';

class MapasHistory extends StatelessWidget {
  const MapasHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ListTile(
        leading: Icon(Icons.map_sharp),
        title: Text('http:jdsjndjsnds'),
        subtitle: Text('ID:1'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
