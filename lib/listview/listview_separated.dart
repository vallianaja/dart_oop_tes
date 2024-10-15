import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Seperated'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 200,
                height: 200,
                color: Colors.brown,
              );
            },
            separatorBuilder: (context, index){
              return const SizedBox(
                width: 20,
              );
            },
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}