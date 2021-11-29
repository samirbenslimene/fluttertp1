import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/screens/reserver.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final imgName = routeArgs['img'];
    final title = routeArgs['title'];
    final subTitle = routeArgs['sub'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Column(
        children: [
          Image.asset(imgName!),
          const Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "Le lorem ipsum  également appelé faux-texte, lipsum, ou bolo bolo1 est,  /n en imprimerie, une suite de mots sans signification utilisée à titre /n  provisoire pour calibrer une mise en page, le texte définitif venant remplacer le /n faux-texte dès qu'il est prêt ou que la mise en page est achevée. "),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subTitle!,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Reserver.routeName, arguments: {
                  "img": imgName,
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                height: 50,
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                    ),
                    Text(
                      "Acheter",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
