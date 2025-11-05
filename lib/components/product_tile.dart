import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_kelompok/models/product.dart';
import 'package:tugas_kelompok/models/shop.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  // Add to cart method
  void addToCart(BuildContext context) {
    // Show dialog before add
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Tambahkan ke Gerobak?"),
        actions: [
          // Cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Tidak jadi"),
          ),

          // Yes button
          MaterialButton(onPressed: () {
            
            // pop dialog box
            Navigator.pop(context);
            context.read<Shop>().addToCart(product);
          },
          child: Text("Tambah"),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(20.0),
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: EdgeInsets.all(25.0),
                  child: Image.asset(product.imagePath),
                ),
              ),

              const SizedBox(height: 16.0),
              // Product name
              Text(
                product.name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                ),
              ),
              const SizedBox(height: 7),
              // product description
              Text(
                product.description,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 12.0,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: Icon(Icons.add_box_rounded),
                ),
              ),
              // product price
              Text(
                product.price.toStringAsFixed(2),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
