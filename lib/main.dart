import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_meet.dart';
import 'container.dart';
import 'column.dart';
import 'row.dart';
import 'listview/listview.dart';
import 'listview/listview_builder.dart';
import 'gridview/gridview.dart';
import 'gridview/gridviewbuilder.dart';
import 'listview/listview_separated.dart';
import 'button/elevated_button.dart';
import 'button/outlined_button.dart';
import 'button/text_button.dart';
import 'image.dart';
import 'navigator/navigator.dart';
import 'slicing/first_slicing/slicing_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true),
      home: const ProfileScreen(),
    );
  }
}


