import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outlined Button'),
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
            const OutlinedButton(
                onPressed: null ,
                child: Text('Outlined Button Disabled')
            ),
            const SizedBox(height: 20,),
            OutlinedButton(
                onPressed: () {  },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  foregroundColor: Colors.blue,
                ),
                child: const Text('Outlined Button Enabled')
            ),
          ],
        ),
      ),
    );
  }
}