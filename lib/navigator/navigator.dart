import 'package:first_flutter_project/image.dart';
import 'package:flutter/material.dart';
import '../first_meet.dart';
import '../container.dart';
import '../column.dart';
import '../row.dart';
import '../listview/listview.dart';
import '../listview/listview_builder.dart';
import '../gridview/gridview.dart';
import '../gridview/gridviewbuilder.dart';
import '../listview/listview_separated.dart';
import '../button/elevated_button.dart';
import '../button/outlined_button.dart';
import '../button/text_button.dart';
import '../image.dart';


class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Fundamental Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Mau Berapa Kolom
            crossAxisSpacing: 10, // Jarak Antar Kolom
            mainAxisSpacing: 15, // Jarak Antar Baris
            childAspectRatio: 6 / 1.8, // Lebar/Tinggi
          ),
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RowWidget(),
                    ),
                  );
                },
                child: const Text('Row Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ColumnWidget(),
                    ),
                  );
                },
                child: const Text('Column Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContainerWidget(),
                    ),
                  );
                },
                child: const Text('Container Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListViewWidget(),
                    ),
                  );
                },
                child: const Text('ListView Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListViewBuilderWidget(),
                    ),
                  );
                },
                child: const Text('ListView Builder')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListViewSeparatedWidget(),
                    ),
                  );
                },
                child: const Text('ListView Seperated')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GridViewWidget(),
                    ),
                  );
                },
                child: const Text('GridView Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GridViewBuilderWidget(),
                    ),
                  );
                },
                child: const Text('GridView Builder')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextButtonWidget(),
                    ),
                  );
                },
                child: const Text('TextButton Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OutlinedButtonWidget(),
                    ),
                  );
                },
                child: const Text('OutlinedButton Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ElevatedButtonWidget(),
                    ),
                  );
                },
                child: const Text('ElevatedButton Widget')),

            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageWidget(),
                    ),
                  );
                },
                child: const Text('Image Widget')),
          ],
        ),
      ),
    );
  }
}