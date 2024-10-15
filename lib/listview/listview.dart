import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(height: 20, width: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              const SizedBox(height: 20, width: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              const SizedBox(height: 20, width: 20,),
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
              ),
              const SizedBox(height: 20, width: 20,),
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
              ),
              const SizedBox(height: 20, width: 20,),
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
              ),
              const SizedBox(height: 20, width: 20,),
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
              ),
              const SizedBox(height: 20, width: 20,),
            ],
          ),
        ),
      ),
    );
  }
}