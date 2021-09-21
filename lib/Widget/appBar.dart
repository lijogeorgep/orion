import 'package:flutter/material.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {
  const appBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.network(
        'https://shopatorion.com/images/logos/logo.png',
        scale: 2.5,
      ),
      centerTitle: true,
      backgroundColor: Colors.orange,
      leading: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xff34282C),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: IconButton(
                icon: Image.asset(
                  'assets/icons/menu.png',
                  scale: 10.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          );
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
              icon: Image.asset(
                'assets/icons/shopping-cart.png',
                color: Colors.white,
              ),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  onPressed: () {})),
        ),
      ],
    );
  }
}
