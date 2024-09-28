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
      body: InteractiveViewer(
        panEnabled: true, // Permet de déplacer l'image
        minScale: 0.5, // Échelle minimale
        maxScale: 4.0, // Échelle maximale
        child: Image.asset(
        'assets/images/familles-lng-map-monde.png',
        fit: BoxFit.contain, // Assure que l'image soit bien contenue
      ),
      ),
    );
  }
}


