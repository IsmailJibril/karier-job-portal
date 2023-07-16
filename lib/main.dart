import 'package:flutter/material.dart';
import 'package:karier_job_portal/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Poppins'
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}