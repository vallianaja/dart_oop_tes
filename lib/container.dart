import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(5, 8)
                )
              ]),

          child: const Center(
            child: Text('ini Kontainer'),
          ),
        ),
      ),
    );
  }
}