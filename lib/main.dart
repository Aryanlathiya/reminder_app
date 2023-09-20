import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:reminder/ui/welcome.dart';

void main() {
  runApp(
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcomepage(),
    )
  );
  
}