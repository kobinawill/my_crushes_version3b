import 'package:flutter/material.dart';
import 'package:my_crushes_version3b/GirlsDescriptionPage.dart';

List girlnames = ["Racheal Wilson","Efua Aidoo","Deborah Line Seka","Georgina Thompson","Eugenia Elikem Lawoe","Portia Esinam Attivo"];
Map girlsDescription = {
  girlnames[0]:"Racheal was my first ever crush, from class 2 to class 6",
  girlnames[1]:"Efua Aidoo was from outside the country as at that time we were in primary 5",
  girlnames[2]:"Deborah is an Ivorian. She was the lady I was obsessed with the most. It took me 3 years to get over her",
  girlnames[3]:"Georgina was the most submisive and I respected her for that, still do",
  girlnames[4]:"Eugenia is the youngest on the list, she is very beautiful and intelligent. She wants to become a doctor",
  girlnames[5]:"Portia is the best shaped amongst the rest, she's vying for a position at school"
};
Map girlsPictures = {
  girlnames[0]:"images/Racheal.jpg",
  girlnames[1]:"images/Efua.jpg",
  girlnames[2]:"images/Deborah.jpg",
  girlnames[3]:"images/Georgina.jpg",
  girlnames[4]:"images/Eugenia.jpg",
  girlnames[5]:"images/Portia.jpg"
};
Map girlsSubtitle = {
  girlnames[0]:"First Girl I had a crush on",
  girlnames[1]:"Second Girl I had a crush on",
  girlnames[2]:"Third Girl I had a crush on",
  girlnames[3]:"Fourth Girl I had a crush on",
  girlnames[4]:"Fifth Girl I had a crush on",
  girlnames[5]:"Last Girl I had a crush on"
};

void main() => runApp(new MaterialApp(title: "My Crushes version 3ii", home: new HomePage(), debugShowCheckedModeBanner: false,));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyCrushes", style: new TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: new ListView.builder(
          itemCount: girlnames.length,
          itemBuilder: (BuildContext context, int indexValue){
            return Column(
              children: <Widget>[
                new Divider(height: 6.0),
                new ListTile(
                  title: new Text(girlnames[indexValue]),
                  subtitle: new Text(girlsSubtitle[girlnames[indexValue]]),
                  leading: new CircleAvatar(
                    child: new Image.asset(girlsPictures[girlnames[indexValue]],
                    width: 40,
                    fit: BoxFit.fill,),
                  ),
                  onTap: (){
                    var route = new MaterialPageRoute(
                        builder: (BuildContext context){
                          return GirlsDescriptionScreen(value: indexValue);
                        });
                    Navigator.push(context, route);
                  },
                )
              ],
            );
          }),
    );
  }
}
