import 'package:flutter/material.dart';
import 'package:loja_virtual/utils/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerItem(icon: Icons.home, title: 'Inicio', page: 0,),
          DrawerItem(icon: Icons.list, title: 'Produtos', page: 1),
          DrawerItem(icon: Icons.playlist_add_check, title: 'Meus Pedidos', page: 2),
          DrawerItem(icon: Icons.location_on, title: 'Lojas', page: 3),
          DrawerItem(icon: Icons.exit_to_app, title: 'Sair', page: 4,),

        ],
      ),
    );
  }
}