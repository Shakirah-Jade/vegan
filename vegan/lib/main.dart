import 'package:flutter/material.dart';
import 'package:vegan/detailpage.dart';

void main() => runApp(const Vegan());

class Vegan extends StatelessWidget {
  const Vegan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                          image: AssetImage('assets/sea.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good',
                  style: TextStyle(
                      fontFamily: 'Futur',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5B8842),
                      fontSize: 50.0),
                ),
                Text(
                  'Morning',
                  style: TextStyle(
                      fontFamily: 'Futur',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5B8842),
                      fontSize: 50.0),
                ),
                Text(
                  'Popular Food',
                  style: TextStyle(
                      fontFamily: 'Futur',
                      fontWeight: FontWeight.w600,
                      //color: Color(0xFF5B8842),
                      fontSize: 18.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7.0,
          ),

          /// MAKING THE IMAGES SCROLLABLE
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildListItem('assets/sea.jpg', 'Seafood salad', '\$28'),
                _buildListItem('assets/veg.jpg', 'Vegan Breakfast', '\$28'),
                _buildListItem('assets/meat.jpg', 'Meat salad', '\$28'),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Best Food',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Color(0xFFACBEA3)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage('assets/veg.jpg'), fit: BoxFit.contain),
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   height: 55.0,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(50.0),
      //           topRight: Radius.circular(50.0)),
      //       color: Color(0xFF5AC035)),
      //   padding: EdgeInsets.only(left: 40.0, right: 40.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Icon(
      //         Icons.bookmark_border,
      //         color: Colors.white,
      //       ),
      //       Icon(
      //         Icons.search,
      //         color: Colors.white,
      //       ),
      //       Icon(
      //         Icons.shopping_basket,
      //         color: Colors.white,
      //       ),
      //       Icon(
      //         Icons.person_outline,
      //         color: Colors.white,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  // MAKING A LIST OF IMAGES
  Widget _buildListItem(String imgpath, String name, String price) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => DetailPage(
                  herotag: imgpath,
                  foodname: name,
                  foodprice: price,
                ))));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.0,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5.0)
              ]),
          child: Stack(
            children: [
              Container(
                height: 165.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Color(0xFFACBEA3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
              ),
              Hero(
                  tag: imgpath,
                  child: Container(
                    height: 175.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgpath), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                  )),
              Positioned(
                  top: 160.0,
                  right: 20.0,
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 17.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white),
                    ),
                  )),
              Positioned(
                top: 190.0,
                left: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Container(
                      width: 175.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontSize: 12.0),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 14.0,
                                ),
                              ],
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 16.0),
                            ),
                          ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
