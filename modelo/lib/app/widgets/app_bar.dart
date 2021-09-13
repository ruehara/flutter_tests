import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String image;
  final String title;

  CustomAppBar({
    Key? key,
    required this.title,
    required this.image,
  })  : preferredSize = const Size.fromHeight(70.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Image.asset(
        image,
        color: Colors.white70,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      automaticallyImplyLeading: false,
    );
  }
}
