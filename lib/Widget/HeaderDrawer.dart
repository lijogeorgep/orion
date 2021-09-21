import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.orange,
            child: Center(
              child: Text(
                'David Cameroon',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Shop by category',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'Top Brands',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'Flash Sales',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'New Arrivals',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'Hot Sales',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'Offer Zone',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'Combo Offer',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            title: Text(
              'Log out',
              style: TextStyle(fontFamily: 'Lobster'),
            ),
            trailing: Icon(Icons.arrow_right_outlined),
          ),
        ],
      ),
    );
  }
}
