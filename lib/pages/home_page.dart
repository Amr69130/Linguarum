import 'package:flutter/material.dart';
import 'package:linguarum/pages/map_monde.dart';
import 'package:linguarum/pages/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LINGUARUM"),
        ),
        body:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/earth2.jpg"),
                const Text(
                  "LINGUARUM",
                  style: TextStyle(
                      fontSize: 42,
                      fontFamily: 'Poppins'
                  ) ,
                ),
                const Text("La généalogie des langues",
                  style: TextStyle(
                      fontSize: 24
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>MapMonde()
                        )
                    );
                  },
                  child: Text("map monde des langues",
                    style: TextStyle(
                        fontSize: 20
                    ),),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>BasePage()
                        )
                    );
                  },
                  child: Text("grandes familles de langues",
                    style: TextStyle(
                        fontSize: 20
                    ),),
                )
              ],
            )
        )
    );
  }
}
