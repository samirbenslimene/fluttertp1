import 'package:flutter/material.dart';
import 'package:hello/screens/detail_screen.dart';

class MyCard extends StatelessWidget {
  String imgName;
  String title;
  String subTitle;

  MyCard(
    this.imgName,
    this.subTitle,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailsScreen.routeName,
            arguments: {"img": imgName, "sub": subTitle, "title": title});
      },
      child: Card(
        child: Row(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset(imgName),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  subTitle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
