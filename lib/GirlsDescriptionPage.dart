import 'package:flutter/material.dart';
import 'package:my_crushes_version3b/main.dart';

class GirlsDescriptionScreen extends StatefulWidget {
  final int value;
  GirlsDescriptionScreen({Key key, this.value}) : super(key: key);
  @override
  _GirlsDescriptionScreenState createState() => _GirlsDescriptionScreenState();
}

class _GirlsDescriptionScreenState extends State<GirlsDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(girlnames[widget.value]),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: 200,
              width: 200,
              color: Colors.black,
              alignment: Alignment.center,
              child: new Image.asset(girlsPictures[girlnames[widget.value]],
                width: 150,
                height: 150,),
            ),
            new Padding(padding: EdgeInsets.all(5)),
            new Center(
              child: new Container(
                width: 200,
                child: new Text(girlsDescription[girlnames[widget.value]], style: descriptionText(), textAlign: TextAlign.center,),
              )
            )
          ],
        ),
      ),
    );
  }
}

TextStyle descriptionText(){
  return new TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w100
  );
}