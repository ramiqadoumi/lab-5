import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            actions: [
              Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple
                  ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Discover();
                          },
                        ));
                      });
                    },
                    icon: Icon(Ionicons.apps_outline
),
                    label: Text("Let's Shop")),
              )
            ],
            title: Row(children: [
              Icon(Icons.home),
              SizedBox(
                width: 10,
              ),
              Text("Home Page"),
            ]),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  child: Text("Welcome in our shop",style: TextStyle(fontSize: 30,color: Colors.purple),),
                ),
               Icon(Icons.shop,color: Colors.purple,size: 35,),

              ],
            ),
          )),
    );
  }
}
