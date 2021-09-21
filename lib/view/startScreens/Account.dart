import 'package:flutter/material.dart';
import 'package:orion/Widget/HeaderDrawer.dart';
import 'package:orion/Widget/appBar.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
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
