import 'package:flutter/material.dart';
import 'package:loja_virtual/models/page_manager.dart';
import 'package:provider/provider.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final int page;
  DrawerItem({this.icon, this.title, this.page});

  @override
  Widget build(BuildContext context) {
    final int currentPage = context.watch<PageManager>().page;
    final primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              child: Icon(
                icon,
                size: 30,
                color:  currentPage == page ? primaryColor : Color(0xFF6c757d),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 17, color: currentPage == page ? Color(0xFFe60014) : Color(0xFF6c757d)),
          )
        ],
      ),
    );
  }
}
