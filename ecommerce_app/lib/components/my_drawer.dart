import 'package:ecommerce_app/components/list_tile.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.shopping_bag,
              size: 75,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          MyListTile(
              title: 'Shop',
              icon: Icons.home,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShopPage()));
              }),
          MyListTile(
              title: 'Cart',
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              }),
          MyListTile(
              title: 'Exit',
              icon: Icons.exit_to_app_sharp,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IntroPage()));
              })
        ],
      ),
    );
  }
}
