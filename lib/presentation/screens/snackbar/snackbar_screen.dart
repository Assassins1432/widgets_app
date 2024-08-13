import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const String routeName = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Dialogo de Alerta'),
          content: const Text('¿Estas seguro de cerrar esta ventana?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar & Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Hola Mundo!'),
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Ok!',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
              },
              child: const Text('Mostrar SnackBar'),
            ),
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: const [
                    Text('Esta es una aplicación de ejemplo'),
                  ],
                );
              },
              child: const Text('Mostrar Licencias Usadas en esta App'),
            ),
            FilledButton.tonal(
              onPressed: () {
                showLicensePage(
                  context: context,
                );
              },
              child: const Text('Mostrar Licencias de Flutter directamente'),
            ),
            ElevatedButton(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar Dialogo Personalizado'),
            ),
          ],
        ),
      ),
    );
  }
}
