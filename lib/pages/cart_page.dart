import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/components/tombol_gw.dart';
import 'package:tugas_kelompok/models/product.dart';
import 'package:tugas_kelompok/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Yakin ingin hapus?"),
          actions: [
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Tidak jadi"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);

                context.read<Shop>().removeFromCart(product);
              },
              child: Text("Hapus"),
            ),
          ],
        );
      },
    );
  }

  void paymentPressed(BuildContext context) {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: Text("Users wannts to pay!, Connect this app to backend"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> carts = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Gerobak"),
      ),
      body: Column(
        children: [
          Expanded(
            child:  carts.isEmpty ? const Center(child: Text("Gerobak Kosong..."),) : ListView.builder(
              itemCount: carts.length,
              itemBuilder: (context, index) {
                final Product product = carts[index];

                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('Rp ${product.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    onPressed: () => removeItemFromCart(context, product),
                    icon: Icon(Icons.remove_circle_rounded),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: TombolGw(onTap: () => paymentPressed(context), child: Text("Pay Now")),
            ),
            
        ],
      ),
    );
  }
}
