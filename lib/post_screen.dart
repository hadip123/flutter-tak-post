import 'package:flutter/material.dart';
import 'package:tek_post/Components/custom_appbar.dart';
import 'package:tek_post/Components/custom_drawer.dart';
import 'package:tek_post/Components/leading.dart';
import 'package:tek_post/Components/post_body.dart';
import 'package:tek_post/home.dart';

class PostScreen extends StatelessWidget {
  final String title;
  final String matlab;
  var topImage;
  var bottomImage;

  PostScreen({
    required this.title,
    required this.matlab,
    this.topImage,
    this.bottomImage,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildCustomAppBar(
          title: title, leading: Leading(context: context, have: true)),
      endDrawer: CustomDrawer(size: size),
      body: PostBody(
        bodyText: matlab,
        topImage: 'https://bigbangpage.com/wp-content/uploads/2014/10/bomb.jpg',
      ),
    );
  }
}
