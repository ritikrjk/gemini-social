import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  final pageController = PageController();

  void onItemTapped(int index) {
    _selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}
