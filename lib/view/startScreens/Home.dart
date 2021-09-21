import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:orion/Widget/HeaderDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              getSlider(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    'Shop by Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Lobster'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              shopByCategory(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    'Offer Zone',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Lobster'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              offerZone(),
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(onPressed: () {}, child: Text('ViewAll'))),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    'Combo Offers',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Lobster'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              comboOffer(),
            ],
          ),
        ),
      ),
    );
  }

  /// slider
  Widget getSlider() {
    return Container(
      height: 200,
      child: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/523d3a92cf2926dd9a45251f34dde42a.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/0636cac8acd3e7bb76e3da4204bc7ca8.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/d74ffef043cf6fed6b3ea52e5c4d05751.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/d74ffef043cf6fed6b3ea52e5c4d05752.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/download.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1.0,
            ),
          ),
        ],
      ),
    );
  }

  /// shop by category
  Widget shopByCategory() {
    return Container(
      height: 200,
      // color: Colors.red,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://i.pinimg.com/736x/99/b1/0e/99b10e3b9921ae70f8b403ab4e2c22fd--top-list-ceiling-fans.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Fans',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://5.imimg.com/data5/HG/ET/GLADMIN-2083949/electrical-and-accessories-500x500.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Electricals',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://homedepot.scene7.com/is/image/homedepotcanada/p_1001421102.jpg?wid=1000&hei=1000&op_sharpen=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Lighting',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://i0.wp.com/theconstructor.org/wp-content/uploads/2019/03/plumbing-sanitary-items-buildings.jpeg?resize=501%2C258&ssl=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Plumbing',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://cpimg.tistatic.com/03856879/b/4/Multi-CP-Bath-Fittings.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Bath Fittings',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://www.deccanherald.com/sites/dh/files/styles/article_detail/public/article_images/2020/05/10/iStock-993760082-1589117032.jpg?itok=a87whwul',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Appliances',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://i.pinimg.com/736x/99/b1/0e/99b10e3b9921ae70f8b403ab4e2c22fd--top-list-ceiling-fans.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Fans',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPVe3VqjXsTFt8CF78idCYOh78p3xYIS3i5wa2AJxnr-cdAB8saXUgwF4z8yxOXwC5rxw&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Text(
                    'Switches',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// offer zone
  Widget offerZone() {
    return Container(
      height: 90,
      //color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // crossAxisCount: 4,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  // width: 80,
                  child: Image.network(
                    'https://shopatorion.com/admin/slider/360e41a1660a4a554bd26bd39d6db8f8.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  child: Image.network(
                    'https://shopatorion.com/admin/slider/fa17a43f7bae69bdc4440a8b0756a5a6.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  child: Image.network(
                    'https://shopatorion.com/admin/slider/360e41a1660a4a554bd26bd39d6db8f8.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  child: Image.network(
                    'https://shopatorion.com/admin/slider/fa17a43f7bae69bdc4440a8b0756a5a6.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// combo offer
  Widget comboOffer() {
    return Container(
      height: 400,
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 180,
                      width: 120,
                      child: Image.network(
                          'https://shopatorion.com/admin/productimage/specimen%204.jpg',
                          fit: BoxFit.fill),
                      // color: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Image.network(
                            'https://shopatorion.com/admin/productimage/Switch.png',
                            fit: BoxFit.fill,
                          ),
                          //   color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Image.network(
                            'https://shopatorion.com/admin/productimage/specimen%202.jpg',
                            fit: BoxFit.fill,
                          ),
                          //   color: Colors.yellow,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 85,
                          width: 190,
                          child: Image.network(
                            'https://shopatorion.com/admin/productimage/specimen%203.jpg',
                            fit: BoxFit.fill,
                          ),
                          //  color: Colors.purple,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Image.network(
                            'https://shopatorion.com/admin/productimage/Switch.png',
                            fit: BoxFit.fill,
                          ),
                          //  color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Image.network(
                            'https://shopatorion.com/admin/productimage/specimen%202.jpg',
                            fit: BoxFit.fill,
                          ),
                          //  color: Colors.yellow,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 85,
                          width: 190,
                          child: Image.network(
                            'https://shopatorion.com/admin/productimage/specimen%203.jpg',
                            fit: BoxFit.fill,
                          ),
                          //  color: Colors.purple,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 180,
                      width: 120,

                      child: Image.network(
                          'https://shopatorion.com/admin/productimage/specimen%204.jpg',
                          fit: BoxFit.fill),
                      //  color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
