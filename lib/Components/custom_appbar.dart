import 'package:flutter/material.dart';
import 'package:tek_post/Components/leading.dart';

buildCustomAppBar({required String title, leading}) {
  if (leading == null) {
    leading = Leading(have: false);
  }

  return AppBar(
    title: Text(title),
    elevation: 0,
    centerTitle: true,
    leading: leading.have
        ? IconButton(
            onPressed: () {
              Navigator.pop(leading.context);
            },
            icon: Icon(Icons.arrow_back))
        : Container(),
  );
}
