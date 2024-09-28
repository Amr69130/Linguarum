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
      body: Row(
        children: [
          Expanded(
            flex: 7, // 70% de l'écran pour l'image interactive
            child: InteractiveViewer(
              panEnabled: true, // Permet de déplacer l'image
              minScale: 0.5, // Échelle minimale
              maxScale: 4.0, // Échelle maximale
              child: Image.asset(
                'assets/images/familles-lng-map-monde.png',
                fit: BoxFit.contain, // Assure que l'image soit bien contenue
              ),
            ),
          ),
          Expanded(
            flex: 3, // 30% de l'écran pour les informations
            child: Container(
              color: Colors.white, // Optionnel : mettre un fond blanc
              padding: EdgeInsets.all(16.0), // Espacement intérieur
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informations sur la carte',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10), // Espacement entre le titre et le texte
                  Text(
                    "Cette carte et beaucoup d'informations proviennent du site web de M. Jacques LECLERC (https://www.axl.cefan.ulaval.ca/index.html)",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  // Tu peux ajouter plus de widgets ici (boutons, icônes, etc.)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
