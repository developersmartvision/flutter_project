import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as smartphone;

void main() {
  runApp(MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(Icons.computer),text: "Komputer",
            ),
            Tab(
              icon: Icon(Icons.headset),text: "Headset",
            ),
            Tab(
              icon: Icon(Icons.radio),text: "Radio",
            ),
            Tab(
              icon: Icon(Icons.smartphone),text: "Smartphone",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          smartphone.Smartphone()

        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.headset),
            ),
            Tab(
              icon: Icon(Icons.radio),
            ),
            Tab(
              icon: Icon(Icons.smartphone),
            ),
          ],
        ),

      ),
    );
  }
}
