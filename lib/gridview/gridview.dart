import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Mau Berapa Kolom
          crossAxisSpacing: 10, // Jarak Antar Kolom
          mainAxisSpacing: 10, // Jarak Antar Baris
          childAspectRatio: 2/2, // Lebar/Tinggi
        ),
        children: [
          Container(
            color: Colors.deepPurple,
          ),

          Container(
            color: Colors.deepPurple,
          ),

          Container(
            color: Colors.deepPurple,
          ),

          Container(
            color: Colors.deepPurple,
          ),

          Container(
            color: Colors.deepPurple,
          ),

          Container(
            color: Colors.deepPurple,
          ),

          Container(
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}