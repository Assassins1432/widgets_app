import 'dart:io';

import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int newDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Forma para identificar el Notch del dispositivo y evitar que el contenido se solape con el mismo.
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: newDrawerIndex,
      onDestinationSelected: (int index) {
        setState(() {
          newDrawerIndex = index;
        });
      },
      children: [
        Padding(padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10)),
        const NavigationDrawerDestination(
          icon: Icon(Icons.add),
          label: Text('Home Screen'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.add_shopping_cart_rounded),
          label: Text('Otra Pantalla'),
        ),
      ],
    );
  }
}
