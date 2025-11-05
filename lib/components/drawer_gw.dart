import 'package:flutter/material.dart';
import 'package:tugas_kelompok/components/list_tile_gw.dart';

class DrawerGw extends StatelessWidget {
  const DrawerGw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopify,
                    size: 52.0,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              // Shop Page
              ListTileGw(
                text: "Shop Page",
                icon: Icons.shopping_bag_sharp,
                onTap: () => {Navigator.pop(context)},
              ),
              // Cart Page
              ListTileGw(
                text: "Cart Page",
                icon: Icons.shopping_basket,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          // Log out
          Padding(
            padding: EdgeInsetsGeometry.only(bottom: 34.0),
            child: ListTileGw(
              text: "Log Out",
              icon: Icons.output_rounded,
              onTap: () => {Navigator.pushNamedAndRemoveUntil(context, "/intro_page", (rote) =>  false)},
            ),
          ),
        ],
      ),
    );
  }
}
