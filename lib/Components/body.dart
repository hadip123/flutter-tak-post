// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tek_post/Components/post.dart';
import 'package:tek_post/lorem.dart';
import 'package:tek_post/methods.dart';
import 'package:tek_post/post_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: SingleChildScrollView(
        child: FutureBuilder(
            future: Lorem.getText(),
            builder: (con, snapshot) {
              return Column(
                children: [
                  Post(
                    imageSrc:
                        'http://files.namnak.com/users/zt/aup/201811/924_pics/%D8%AE%D9%88%D8%A7%D8%A8-%D8%AD%D9%84%D8%B2%D9%88%D9%86.jpg',
                    title: 'کارخانه',
                    desc: snapshot.data.toString(),
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PostScreen(
                            title: 'کارخانه', matlab: snapshot.data.toString(),);
                      }));
                    },
                  ),
                  Post(
                    title: 'کارخانه',
                    desc: snapshot.data.toString(),
                    imageSrc:
                        'https://bigbangpage.com/wp-content/uploads/2014/10/Science.jpg',
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PostScreen(
                            title: 'کارخانه', matlab: snapshot.data.toString());
                      }));
                    },
                  ),
                  Post(
                    imageSrc:
                        'http://files.namnak.com/users/zt/aup/201811/921_pics/%D9%85%D8%B3%D8%A7%D8%AD%D8%AA-%DA%A9%D8%B1%D9%87-%D8%B2%D9%85%DB%8C%D9%86.jpg',
                    title: 'کارخانه',
                    desc: snapshot.data.toString(),
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PostScreen(
                            title: 'کارخانه', matlab: snapshot.data.toString());
                      }));
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}
