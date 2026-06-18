import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Betita_Activity1'),
          centerTitle: true,
        ), //Appbar
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Center(
                child: Image.asset(
                  'assets/PAVLOVA-25-S-01-500x500.webp',
                ), //image.asset
              ), //Center
            ), //Container
            Container(
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Strawberry Pavlova',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ), //text
                    SizedBox(height: 8),
                    Text(
                      "Pavlova is a  meringue-based desset named after Anna Pavlova. "
                      "It has a crisp crust, soft inside, topped with fruit and cream.",
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ), //Text
                  ],
                ), //column
              ), //padding
            ), //container
            const SizedBox(height: 10),
            Center(child: buildRatingRow()),
            const SizedBox(height: 30),
            buildRowTabs(),
          ],
        ),
      ),
    ); //column
  } //Scaffold
}

Widget buildRatingRow() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: List.generate(
          5,
          (index) => Icon(
            index < 3 ? Icons.star : Icons.star_border,
            color: Colors.yellow,
            size: 20,
          ), //icon
        ), //List.generate
      ), //Row
      const SizedBox(width: 8),
      const Text(
        "Ratings",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget buildIconTab(IconData icon, String label, String value) {
  return Column(
    children: [
      Icon(icon, color: Colors.yellow, size: 28),
      const SizedBox(height: 4),
      Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 4),
      Text(value),
    ],
  ); //column
}

Widget buildRowTabs() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconTab(Icons.timer_outlined, 'PREP', '25 min'),
        buildIconTab(Icons.restaurant, 'Cook', '1 hr'),
        buildIconTab(Icons.people_alt_outlined, 'FEEDS', '4-6 hr'),
      ],
    );
