import 'package:flutter/material.dart';
import 'package:vegan/main.dart';

class DetailPage extends StatefulWidget {
  final herotag;
  final foodname;
  final foodprice;

  const DetailPage({this.herotag, this.foodname, this.foodprice});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300.0,
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/sea.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0))),
              ),
              Container(
                height: 200.0,
                color: Colors.white.withOpacity(0.7),
              ),
              Positioned(
                top: 50.0,
                left: (MediaQuery.of(context).size.width / 2) - 125,
                child: Hero(
                    tag: widget.herotag,
                    child: Container(
                      height: 250.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.herotag),
                              fit: BoxFit.cover)),
                    )),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        (MaterialPageRoute(builder: (context) => HomePage())));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  color: Colors.black,
                ),
              ),
            ],
          ),
          ////////
          ///
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vegan Breakfast',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 25.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.foodprice,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17.0),
                    ),
                    Container(
                      width: 125.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFEDFEE5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_circle_outline,
                                color: Color(0xFF5CB238),
                              )),
                          Text(
                            '3',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Color(0xFF5CB238)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle,
                                color: Color(0xFF5AC035),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'About the Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 45.0,
                ),
                Container(
                  child: Text(
                    'If the style argument is null, the text will use the style from the closest enclosing DefaultTextStyle.The overflow propertys behavior is affected by the softWrap argument. If the softWrap is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option.',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 75.0,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF5AC035),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '\$84.00',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
