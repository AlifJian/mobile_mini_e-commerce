import 'package:flutter/material.dart';
import 'package:tugas_kelompok/components/tombol_gw.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Logo
            Icon(
              Icons.shopify,
              size: 72.0,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 20.0),

            // Text
            Text(
              "Toko Wak mandak",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            // Subttile
            Text("Murah galoo", style: TextStyle(fontSize: 18)),

            const SizedBox(height: 10.0),

            // Button
            TombolGw(
              onTap: () {
                Navigator.pushNamed(context, "/shop_page");
              },
              child: Icon(Icons.arrow_forward_ios_rounded, size: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
