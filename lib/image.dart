import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/s.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20,),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiAejFH7NjULHm65CN81KeuLUcMTpbxQaRvV9sDbl8xQmUq4MHh9K5ze-3UmMR8t2uBW8&usqp=CAU',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}