import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String routeName = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls + Tiles'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bike, bus, train }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Modo desarrollador'),
          subtitle:
              const Text('Activa el modo desarrollador para ver más opciones'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Transporte'),
          subtitle: const Text('Selecciona tu medio de transporte'),
          children: [
            RadioListTile(
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
              title: const Text('Auto'),
              subtitle: const Text('Viajar en Auto'),
            ),
            RadioListTile(
              value: Transportation.bike,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.bike;
                });
              },
              title: const Text('Bicicleta'),
              subtitle: const Text('Viajar en Bicicleta'),
            ),
            RadioListTile(
              value: Transportation.bus,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.bus;
                });
              },
              title: const Text('Bus'),
              subtitle: const Text('Viajar en Bus'),
            ),
            RadioListTile(
              value: Transportation.train,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.train;
                });
              },
              title: const Text('Tren'),
              subtitle: const Text('Viajar en Tren'),
            ),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          title: const Text('¿Quieres desayunar?'),
          subtitle: const Text('Desayuno incluido en el hotel'),
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          value: wantsLunch,
          title: const Text('¿Quieres almorzar?'),
          subtitle: const Text('Almuerzo incluido en el hotel'),
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          value: wantsDinner,
          title: const Text('¿Quieres cenar?'),
          subtitle: const Text('Cena incluida en el hotel'),
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        )
      ],
    );
  }
}
