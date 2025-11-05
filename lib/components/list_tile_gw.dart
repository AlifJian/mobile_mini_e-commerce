import 'package:flutter/material.dart';

class ListTileGw extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const ListTileGw({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 21.0),
      leading: Icon(icon, color: Theme.of(context).colorScheme.inversePrimary),
      title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      onTap: onTap,
    );
  }
}
