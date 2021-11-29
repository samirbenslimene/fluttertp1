import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'package:hello/mycard.dart';
import 'package:hello/screens/detail_screen.dart';
import 'package:hello/screens/reserver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          DetailsScreen.routeName: (context) => DetailsScreen(),
          Reserver.routeName: (context) => Reserver(),
        });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
      ),
      body: ListView(
        children: [
          MyCard("assets/images/dmc5.jpg", "200 TND", "Devil My Cry 5"),
          MyCard("assets/images/minecraft.jpg", "200 TND", "Resident Evil"),
          MyCard("assets/images/rdr2.jpg", "150 TND", "Read Dead Redemption"),
          MyCard("assets/images/nfs.jpg", "100 TND", "Need For Speed"),
          MyCard("assets/images/fifa.jpg", "150 TND", "FiFa 2020"),
        ],
      ),
    );
  }
}

class GameData {
  final String image;
  final String title;
  final int prive;
  final String Description;
  // ignore: non_constant_identifier_names
  final String quantité ;
  GameData({
    required this.image,
    required this.title,
    required this.prive,
    required this.Description,
    required this.,
  });
 
  

  

  

  @override
  String toString() {
    return 'GameData(image: $image, title: $title, prive: $prive, Description: $Description, : $)';
  }

 


  GameData copyWith({
    String? image,
    String? title,
    int? prive,
    String? Description,
    String quantité? ,
  }) {
    return GameData(
      image: image ?? this.image,
      title: title ?? this.title,
      prive: prive ?? this.prive,
      Description: Description ?? this.Description,
      :  ?? this.,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'prive': prive,
      'Description': Description,
      '': .toMap(),
    };
  }

  factory GameData.fromMap(Map<String, dynamic> map) {
    return GameData(
      image: map['image'],
      title: map['title'],
      prive: map['prive'],
      Description: map['Description'],
      : String quantité.fromMap(map['']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GameData.fromJson(String source) => GameData.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GameData &&
      other.image == image &&
      other.title == title &&
      other.prive == prive &&
      other.Description == Description &&
      other. == ;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      title.hashCode ^
      prive.hashCode ^
      Description.hashCode ^
      .hashCode;
  }
}
