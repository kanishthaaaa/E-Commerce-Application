import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  Function()? onTap;
  final String title;
  final IconData icon;
  MyListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
