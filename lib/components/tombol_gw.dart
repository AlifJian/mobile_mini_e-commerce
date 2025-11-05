

import 'package:flutter/material.dart';

class TombolGw extends StatelessWidget{
  final void Function()? onTap;
  final Widget child;

  const TombolGw({super.key, required this.onTap, required this.child});
    
    @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12.0)
        ),
        padding: EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}