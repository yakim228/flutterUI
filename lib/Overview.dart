import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Overview extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(children: <Widget>[
                  Text("TG"),
                  Text("TG"),
                  Text("TG"),
                ]),
              )),
          Container(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Row(children: <Widget>[
                  Text("TG"),
                  Text("TG"),
                ]),
              )),
          FoodsLine(),
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
    return Padding(
      padding: EdgeInsets.all(0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text("Tg"),
            height: 200,
            width: 200,
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
