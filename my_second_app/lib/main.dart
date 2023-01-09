// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}


class MyHomePage extends StatelessWidget {
 MyHomePage({Key? key, required this.title}) : super(key: key);
 
 final String title;
 
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Product Listing")),
    body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
              name: "iPhone 14",
              description: "iPhone is the stylist phone ever",
              price: 100000,
              image: "iphone.png"),
            ProductBox(
              name: "Pixel 6A",
              description: "Pixel is the most featureful phone ever",
              price: 48000,
              image: "pixel.jpg"),
            ProductBox(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 54000,
              image: "laptop.png"),
            ProductBox(
              name: "Tablet 9A",
              description: "Tablet is the most useful device ever for meeting",
              price: 25000,
              image: "tablet.jpg"),
            ProductBox(
              name: "Pendrive 32GB",
              description: "Pendrive is useful storage medium",
              price: 1000,
              image: "pendrive.png"),
            ProductBox(
              name: "Floppy Drive",
              description: "Floppy drive is useful rescue storage medium",
              price: 250,
              image: "floppy.jpg"),
          ],
        ));
    }
}


class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image}) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/$image"),
            Expanded(child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(this.name,style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(this.description),
                  // ignore: prefer_interpolation_to_compose_strings
                  Text("Price:" + this.price.toString()),
                ]
              )
            ))
          ]
        )
      )
    );
  }
}

