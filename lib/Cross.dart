import 'package:flutter/material.dart';

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: const Text(
        'Betita-Activty3',
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              color: Colors.red,

            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.yellow,

            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.blue,
            ),

          ],
        ),
    );
  }
}