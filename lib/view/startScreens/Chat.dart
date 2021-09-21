import 'package:flutter/material.dart';
import 'package:orion/Widget/HeaderDrawer.dart';
import 'package:orion/Widget/appBar.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: HeaderDrawer(),
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 200,
              color: Colors.orange,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://shopatorion.com/iconimg/161896744f863403d8acde70f95f33ef.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 180,
              right: 10,
              left: 10,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'email',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message',
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        iconSize: 50.0,
                        icon: Image.asset(
                          'assets/icons/msg.gif',
                          scale: 1,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
