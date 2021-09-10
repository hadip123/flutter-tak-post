import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  final String topImage;
  // final String? bottomImage;
  final String bodyText;

  PostBody({required this.topImage, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Image.network(topImage),
              Text(
                bodyText,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Container(
                  alignment: Alignment.center,
                  width: size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Spacer(),
                          Text('بستن مطلب', textAlign: TextAlign.center),
                          Spacer(),
                          Icon(Icons.close),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
