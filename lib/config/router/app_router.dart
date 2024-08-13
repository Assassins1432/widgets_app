import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.routeName,
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
              child: child,
            );
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
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const CardsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                .animate(animation),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.routeName,
      builder: (context, state) {
        return const ProgressScreen();
      },
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const ProgressScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                      .animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.routeName,
      builder: (context, state) {
        return const SnackbarScreen();
      },
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const SnackbarScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                      .animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.routeName,
      builder: (context, state) {
        return const AnimatedScreen();
      },
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const AnimatedScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                      .animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.routeName,
      builder: (context, state) {
        return const UiControlsScreen();
      },
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const UiControlsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                      .animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);
