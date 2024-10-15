import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Builder'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: GridView.builder(
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Buat 3 Kolom
            mainAxisSpacing: 50, // Jarak Antar Baris
            crossAxisSpacing: 10, // Jarak Antar Kolom
            childAspectRatio: 2/1, // Lebar/Tinggi
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.blueGrey,
            );
          }
      ),
    );
  }
}