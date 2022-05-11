//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:pmpb/nova_publi.dart';

main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();

  void isHideBottomNavBar(bool bool) {}
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red.shade800,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade300,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_rounded, color: Colors.black, size: 30),
            backgroundColor: Colors.red.shade800,
          ),
          appBar: appBar(),
          body: body(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: SizedBox(
            height: 57,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.red.shade800,
              selectedFontSize: 15,
              selectedItemColor: Colors.grey.shade300,
              unselectedItemColor: Colors.black,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    label: "Perfil"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    label: "Procurar"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.groups_rounded,
                      color: Colors.black,
                    ),
                    label: "Grupos"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.black,
                    ),
                    label: "Salvos"),
              ],
            ),
          )),
    );
  }
}

body() {
  return SingleChildScrollView(
      child: Column(children: [
    Row(
      children: [
        IconButton(
            icon: Icon(Icons.account_circle), iconSize: 55, onPressed: () {}),
        Container(
            margin: EdgeInsets.all(10),
            child: Text.rich(TextSpan(children: <TextSpan>[
              TextSpan(
                  text: "Policial Santos\n",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              TextSpan(text: " Há 13min", style: TextStyle(fontSize: 10))
            ]))),
      ],
    ),
    Container(
      margin: EdgeInsets.only(left: 250),
      child: Row(
        children: [
          Text(
            "Título",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    ),
    Row(
      children: [
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/policial.png"))),
      ],
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "A lazy rain am I The skies refuse to cry Cremation takes its piece of your supply The night is dressed like noon A sailor spoke too soon And China's on the dark side of the Moon Hear me now Platypus are a few The secret life of roo A personality I never knew (Get it on) My crater weighs a ton The archer's on the run And no one stands alone behind the Sun It's been a long time since I made a new friend Waiting on another black summer to end It's been a long time and you never know when Waiting on another black summer to end Back the flaming whip Are sailing on our censorship Riding on a headless horse to make the trip.",
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.justify,
        ),
      ),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.thumb_up_alt_outlined),
              onPressed: () {},
            ),
            Text(
              "16",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
      IconButton(icon: Icon(Icons.comment_outlined), onPressed: () {}),
      IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
      IconButton(icon: Icon(Icons.share), onPressed: () {})
    ]),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
          Column(
            children: [
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Pablo\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "The skies refuse to cry é tipo isso e tá tudo bem!",
                )
              ]))
            ],
          )
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
          Column(
            children: [
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Nino\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "Concordo plenamente!",
                )
              ]))
            ],
          )
        ],
      ),
    ),
  ]));
}

appBar() {
  return AppBar(
    systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.red.shade800),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("images/brasao.png", height: 40),
        Text("PM-PB",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ],
    ),
  );
}
