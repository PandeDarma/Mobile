import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Profil"),
          centerTitle: true,
        ),
        body:
        MyHomePage(),

      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        padding: EdgeInsets.only(top:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children:[ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: NetworkImage("https://lh3.googleusercontent.com/a-/AOh14Gg31AW69o5eR2pL8ggD7kOKugBQKxI2vMqaSQpCqg=s288-cc-rg"),
                  width: 150, height: 150,
                ), ),
                Text("Gede Pande Darma Suardika", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                    color: Colors.white
                ), ),
                Text("https://pandedarma.com", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.blueAccent
                ), ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  padding: EdgeInsets.all(40),
                  width: 400,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"Gerokgak",Icons.gps_fixed),
                          ContainIcon(12,"081238xxxxx",Icons.call),
                        ],),
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"Indie",Icons.audiotrack),
                          ContainIcon(12,"Rp.0,00",Icons.account_balance_wallet),
                        ], ),],  ), ),   ],), ], ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  const ContainIcon(this.atas,this.isi,this.icon);
  @override
  Widget build(BuildContext context) {
    return    Container(
        margin: EdgeInsets.only(left: 20,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          border: Border.all(width:3,color:Colors.black54,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )

    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
          height: 1.3,
          fontSize: 18,
          color: Colors.blue
      ),
      ),
    );
  }
}
