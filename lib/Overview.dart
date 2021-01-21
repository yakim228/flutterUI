import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 38.0,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 5),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FoodsLine(),
                FoodsLine(),
                FoodsLine(),
                FoodsLine(),
                FoodsLine(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13),
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.topLeft,
            height: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.camera_alt,
                          size: 20,
                        ),
                        padding: EdgeInsets.all(5),
                        shape: CircleBorder(),
                      ),
                    ),
                    Text(
                      "Weekly report",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "You have no upcoming events",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                SizedBox(
                  height: 8,
                ),
                Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "Enjoy your week",
                      ),
                    ))
              ],
            ),
            // child: SvgPicture.asset("assets/coworkers.svg"),
            decoration: BoxDecoration(
                // image: DecorationImage(
                //   // image: ,
                //   fit: BoxFit.fill,
                // ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
          )
        ]));
  }
}

class FoodsLine extends StatefulWidget {
  FoodsLine({Key key}) : super(key: key);

  @override
  _FoodsLineState createState() => new _FoodsLineState();
}

class _FoodsLineState extends State<FoodsLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.black)),
          onPressed: () {},
          color: Colors.transparent,
          elevation: 0.0,
          textColor: Colors.black,
          child: Text(
            "Buy now".toUpperCase(),
            style: TextStyle(fontSize: 14),
          ),
        ));
  }
}
