import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("les grandes familles de langues"),
      ),
      body: Center(
        child: ListView(
          children: [
            Text("indo-européenne"),
            Text("sino-tibétaine"),
            Text("nigéro-congolaise"),
            Text("afro-asiatique (chamito-sémitique)"),
            Text("austronésienne"),
            Text("bantoue"),
            Text("dravidienne"),
            Text("altaïque"),
            Text("japonique (japonaise)"),
            Text("austro-asiatique"),
            Text("autres langues"),
          ],
        )
      ),
    );
  }
}