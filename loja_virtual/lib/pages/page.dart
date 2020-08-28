import 'package:flutter/material.dart';
import 'package:loja_virtual/models/page_manager.dart';
import 'package:loja_virtual/pages/login.dart';
import 'package:loja_virtual/utils/custom_drawer.dart';
import 'package:provider/provider.dart';

class BasePage extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
         Login(),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Text("aa"),
              centerTitle: true,
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Text("ss"),
              centerTitle: true,
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Text("dd"),
              centerTitle: true,
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Text("ff"),
              centerTitle: true,
            ),
          ),
          Container(color: Colors.grey),
          Container(color: Colors.yellow),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.amber),
        ],
      ),
    );
  }
}
