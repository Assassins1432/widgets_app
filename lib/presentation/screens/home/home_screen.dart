import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3 + GoRouter'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      onTap: () {
        // Forma nativa de Flutter para navegar por pantallas
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => ButtonsScreen(),
        //    ),
        //  );

        // Forma de navegar con GoRouter
        context.push(menuItem.link);

        // Forma alternativa de navegar con GoRouter
        // context.pushNamed(menuItem.link);

        // Forma de navegar con GoRouter y pasar argumentos
        // context.pushNamed(menuItem.link, arguments: {'title': menuItem.title});

        // Otra forma de navegar con GoRouter
        // context.pushNmamed(CardScreen.routeName);
      },
    );
  }
}
