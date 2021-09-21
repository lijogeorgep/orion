import 'package:flutter/material.dart';
import 'package:orion/Widget/HeaderDrawer.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      drawer: HeaderDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'My Account',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 400,
            //   color: Colors.amber,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 180,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: IconButton(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('My profile'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 180,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.purple.shade800,
                            child: IconButton(
                                icon: Icon(
                                  Icons.list_alt_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('My orders'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 180,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.green.shade500,
                            child: IconButton(
                                icon: Icon(
                                  Icons.account_balance_wallet_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('My Wallet'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 180,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.red.shade700,
                            child: IconButton(
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Reward Points'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
