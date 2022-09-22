import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tab/models/urlModels.dart';
import 'package:tab/screens/Home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Latest Products"),
          bottom: TabBar(tabs: [
            Icon(Icons.laptop),
            Icon(Icons.phone),
            Icon(Icons.message),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            width: double.infinity,
            child: ListView(children: [
              Column(
                children: [
                  Text(
                    "Latest Laptop",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: double.infinity,
                    child: Image.network(
                      "data:image/jpeg;base64,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",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  URLClass(
                      myfun: () {},
                      title: "Toshiba",
                      Subtitle: "Toshiba G1993",
                      myicon: Icons.add),
                  Container(
                    width: double.infinity,
                    child: Image.network(
                      "data:image/jpeg;base64,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3vJfn2qyigY0Wa0NHQAFFwarDSzO83S23OldYd2fuUyHQdS7y52xj1Ym5j6x/JbGiXBC0fo9sQyJcTrcc3Ht1qaiKAEREAREQBERAEREAREQBERAFjkja7IgHrF1kRAV1ToWF4sWC27W2+/CclX/AN1IWyRStjjMkLcMTsOF7GWIwhw9GznZWtmthRAVEsLrWfGSOoPHZtUKTRsLvJOE7gb/AITmtkWKWFrsnNB6xdAarPoSQeSQ/wAD3H81Alp3NNnNLesELcX6OZ6JczqcbdxyUeoop8JDZWm49NmY6ebZTcGrx0z3ZhpI32y79S+SYGeXLG362I/hupH9x53n52rc4dFy7vcSp9JwDpG5vD5T+042P1RYeCm4NffpmmabBz5HbA0Bt+rXfuUinrKiTzFG63rPBFvtEA9y3Oj0XBELRxMYOhoClqLg06LQmkZPLlZCNzbuy6hYKXBwKj/WzSy7xfC3wz8Vs6JcFZRcH6aPNsLL+sRd3ec1YtaBqAC9IoAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREB//Z",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  URLClass(
                      myfun: () {},
                      title: "Toshiba",
                      Subtitle: "Toshiba G1993",
                      myicon: Icons.add)
                ],
              ),
            ]),
          ),
          Container(
            width: double.infinity,
            child: ListView(children: [
              Column(
                children: [
                  Text(
                    "Latest Laptop",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: double.infinity,
                    child: Image.network(
                      "data:image/jpeg;base64,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",
                      fit: BoxFit.fill,
                      height: 300,
                    ),
                  ),
                  URLClass(
                      myfun: () {},
                      title: "iphon",
                      Subtitle: "iphon 14",
                      myicon: Icons.add),
                  Container(
                    width: double.infinity,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpbDGN_o5qycB8cEAw19WxF5Tpx11ku2-GxQ&usqp=CAU",
                      fit: BoxFit.fill,
                      height: 300,
                    ),
                  ),
                  URLClass(
                      myfun: () {},
                      title: "Samsung",
                      Subtitle: "Samsung Galaxy Z Fold3 ",
                      myicon: Icons.add)
                ],
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrlfn0Nu5E8vCw_xxWuLQMELYNzeA7OadXPg&usqp=CAU",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                URLClass(
                  myfun:face_launchUrl ,
                  title: "facebook",
                  Subtitle: "Join our facebook page",
                  myicon: Icons.facebook,
                ),
                URLClass(
                    myfun:  inst_launchUrl,
                    title: "Instagram",
                    Subtitle: "Join our Instagram page",
                    myicon: Ionicons.add),
                    SizedBox(height: 50,),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple
                  ),
                    onPressed: () {
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) {
                          return Home();
                        },
                      ));
                    },
                    icon: Icon(Icons.home),
                    label: Text("Home page"))
              ],
            ),
          ),
        ]),
      ),
    );
    // ),
  }
}
