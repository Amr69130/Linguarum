import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("base des familles de langues"),
      ),
      body: Center(
        child: ListView(
          children: [
            Text("afro-asiatiques"),
            Text("austroasiatiques"),
            Text("austronésiennes"),
            Text("dravidiennes"),
            Text("eskimo-aléoutes"),
            Text("hmong-mien"),
            Text("indo-européennes"),
            Text("japoniques"),
            Text("mongoles"),
            Text("nilo-sahariennes"),
            Text("nigéro-congolaises"),
            Text("ouraliennes"),
            Text("sino-tibétaines"),
            Text("tai-kadai"),
            Text("tongouses"),
            Text("turques"),
          ],
        )
      ),
    );
  }
}