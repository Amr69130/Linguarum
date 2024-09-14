import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapMonde extends StatefulWidget {
  const MapMonde({Key? key}) : super(key: key);

  @override
  _MapMondeState createState() => _MapMondeState();
}

class _MapMondeState extends State<MapMonde> {
  @override
  void initState() {
    super.initState();
    // Forcer l'orientation paysage
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    // Remettre l'orientation en portrait quand on quitte la page
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mapmonde.png'), // Votre image
            fit: BoxFit.cover, // L'image couvre tout l'écran
          ),
        ),
        child: Center(
          child: Placeholder(), // Vous pouvez remplacer ce Placeholder
        ),
      ),
    );
  }
}


