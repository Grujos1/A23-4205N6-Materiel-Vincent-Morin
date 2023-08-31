import 'package:flutter/material.dart';
import 'package:liste_nav/main.dart';

// TODO Un ecran minimal avec un tres peu de code
class Ecran2 extends StatefulWidget {


  final Truc valeur_truc;

  const Ecran2({Key? key, required this.valeur_truc}) : super(key: key);

  @override
  _Ecran2State createState() => _Ecran2State();
}

class _Ecran2State extends State<Ecran2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecran 2'),
      ),
      body: Text("Id : " + widget.valeur_truc.id.toString() + " Name : " + widget.valeur_truc.name),
    );
  }
}