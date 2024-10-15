import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container 1
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent,
                  border: Border.all(width: 3, color: Colors.yellowAccent),
                ),
                child: const Center(
                  child: Text('My First Box', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1
                  ),),
                )
            ),

            const SizedBox(height: 10,),

            // Container 2
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent,
                  border: Border.all(width: 3, color: Colors.yellowAccent),
                ),
                child: const Center(
                  child: Text('My Second Box', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),),
                )
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent,
                    border: Border.all(width: 3, color: Colors.yellowAccent),
                  ),
                  child: const Column(
                    children: [
                      Text('Eleven'),
                      Text('Eleven'),
                      Text('Eleven'),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent,
                    border: Border.all(width: 3, color: Colors.yellowAccent),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent,
                    border: Border.all(width: 3, color: Colors.yellowAccent),
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
