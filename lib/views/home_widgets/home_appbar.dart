import 'package:flutter/material.dart';

AppBar getHomeAppBar(String title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Colors.green,
    actions: [
      IconButton(
        icon: Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
