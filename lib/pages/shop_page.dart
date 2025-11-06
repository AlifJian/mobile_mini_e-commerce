import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/components/drawer_gw.dart';
import 'package:tugas_kelompok/components/product_tile.dart';
import 'package:tugas_kelompok/models/product.dart';
import 'package:tugas_kelompok/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Halaman Toko"),
        actions: [
          IconButton(onPressed: () => Navigator.pushNamed(context, "/cart_page"), icon: Icon(Icons.shopping_cart_checkout)),
        ],
        centerTitle: true,
      ),
      drawer: DrawerGw(),
      body: ListView(
        children: [
          Center(child: Text("Silahkan pilih barang paling premium")),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: products.length,
              padding: EdgeInsets.all(12.0),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final Product product = products[index];

                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
