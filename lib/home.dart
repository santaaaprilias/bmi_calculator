import 'package:bmi_calculator/info.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/MainScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 77, 71, 109),
        title: const Text("BMI Calculator"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.health_and_safety,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Seputar Kesehatan", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.calculate,
                      size: 70,
                      color: Colors.redAccent,
                    ),
                    Text("Hitung BMI", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          /*  Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.history,
                      size: 70,
                      color: Colors.greenAccent,
                    ),
                    Text("History", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.pie_chart,
                      size: 70,
                      color: Colors.blueGrey,
                    ),
                    Text("Grafik", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          */
        ],
      ),
    );
  }
}
