import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/navbar/navbar.dart';
import 'package:getx_practice/pages/chart.dart';
import 'package:getx_practice/pages/home.dart';
import 'package:getx_practice/pages/note.dart';
import 'package:getx_practice/pages/setting.dart';

class AppPage{

  static List<GetPage> routes =[
    GetPage(name: navbar, page: ()=> const NavBar()),
    GetPage(name: home,page: ()=>const HomeScreen()),
    GetPage(name: note, page: ()=>const NoteScreen()),
    GetPage(name: chart, page: ()=>const ChartScreen()),
    GetPage(name: setting, page: ()=>const SettingScreen()),
  ];
  static getnavbar() => navbar;
  static gethome()=>home;
  static getnote()=>note;
  static getSetting ()=>setting;

  static String navbar="/";
  static String home="/home";
  static String note="/note";
  static String chart="/chart";
  static String setting="/setting";

}