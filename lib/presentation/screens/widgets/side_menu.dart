import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

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

        final menuItem = appMenuItems[index];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
          child: const Text(
            'Flutter + Material 3 + GoRouter',
          ),
        ),
        ...appMenuItems.sublist(0, 3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
          child: Divider(),
        ),
        ...appMenuItems.sublist(3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 15, 28, 15),
          child: Text('Mas opciones'),
        ),
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
