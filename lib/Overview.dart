import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Overview extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Column(children: <Widget>[
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
        height: 165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
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
