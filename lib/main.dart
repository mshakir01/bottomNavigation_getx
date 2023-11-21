import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/pages/home.dart';
import 'package:getx_practice/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPage.getnavbar(),
      getPages: AppPage.routes,)
  );
}

