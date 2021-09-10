import 'package:flutter/material.dart';
import 'package:tek_post/home.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height,
      width: size.width * .70,
      child: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              child: CircleAvatar(
                backgroundColor: Colors.teal[100],
                backgroundImage: NetworkImage(
                    'https://bigbangpage.com/wp-content/uploads/2014/10/Science.jpg'),
              )),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            title: Text(
              'خانه',
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      )),
    );
  }
}
