import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexLapin = Random().nextInt(4);

  int _flops = 0;

  int _pafs = 0;


  void gererTappe(int index) {
    print('Bouton ' + index.toString());

    if (this._indexLapin == index){
      this._pafs++;
      _indexLapin = Random().nextInt(4);
    }
    else{
      this._flops++;
    }
    setState(() {

    });
  }



  @override
  Widget build(BuildContext context) {
    print(this._indexLapin);
    var b0 = MaterialButton(
      onPressed: () {
        gererTappe(0);

      },
      child: Text(this._indexLapin == 0 ? 'Lapin' : 'Taupe'),
    );

    var b1 = MaterialButton(
      onPressed: () {
        gererTappe(1);
      },
      child: Text(this._indexLapin == 1 ? 'Lapin' : 'Taupe'),
    );

    var b2 = MaterialButton(
      onPressed: () {
        gererTappe(2);
      },
      child: Text(this._indexLapin == 2 ? 'Lapin' : 'Taupe'),
    );

    var b3 = MaterialButton(
      onPressed: () {
        gererTappe(3);
      },
      child: Text(this._indexLapin == 3 ? 'Lapin' : 'Taupe'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Tape le lapin'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    'Pafs: ' + this._pafs.toString(),
                    style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                Text(
                    "Flops: " + this._flops.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )
              ],
            ),
            const Text(
              'Tape le lapin',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b0,
                b1
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b2,
                b3
              ],
            )
          ],
        ),
      ),
    );
  }
}
