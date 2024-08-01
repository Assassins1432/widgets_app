import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.routeName,
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: '/buttons',
    name: CardsScreen.routeName,
    builder: (context, state) {
      return const ButtonsScreen();
    },
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        child: const ButtonsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                      .animate(animation),
              child: child);
        },
      );
    },
  ),
  GoRoute(
    path: '/cards',
    name: CardsScreen.routeName,
    builder: (context, state) {
      return const CardsScreen();
    },
  ),
]);
