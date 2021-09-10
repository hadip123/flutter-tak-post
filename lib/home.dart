import 'package:flutter/material.dart';
import 'package:tek_post/Components/body.dart';
import 'package:tek_post/Components/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'تک پست'),
      body: Body(),
    );
  }
}
