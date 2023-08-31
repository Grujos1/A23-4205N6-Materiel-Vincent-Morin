import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class Ecran2 extends StatefulWidget {


  final String texte_envoye;

  const Ecran2({Key? key, required this.texte_envoye}) : super(key: key);

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
      body: Text('Tu as navigué vers l\'écran #2 avec le paramètre : ' + widget.texte_envoye),
    );
  }
}