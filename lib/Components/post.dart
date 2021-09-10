import 'package:flutter/material.dart';
import 'package:tek_post/lorem.dart';

import '../methods.dart';

class Post extends StatelessWidget {
  final String title;
  final String desc;
  final String imageSrc;
  final onClick;
  // final String image;

  Post({
    required this.title,
    required this.desc,
    required this.onClick, 
    required this.imageSrc,
    // this.image,
  });

  // const Post({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.teal[200], borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title, style: Theme.of(context).textTheme.headline6),
              Divider(
                color: Colors.red[900],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        inexive((size.width - 116).round(), 90, desc) + '...',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          imageSrc),
                    ),
                  ),
                ],
              ),
              Container(
                  width: size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        onClick();
                      },
                      child: Text('ادامه مطلب'))),
            ],
          ),
        ),
      ),
    );
  }
}
