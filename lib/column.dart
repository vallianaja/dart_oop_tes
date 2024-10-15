import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Widget'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            const SizedBox(height: 10,),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            const SizedBox(height: 10,),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}