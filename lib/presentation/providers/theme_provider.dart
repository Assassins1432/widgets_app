// Crear un booleano para manejar el estado del tema.
// Este archivo debe contar con generacion de código.

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  bool build() => false;

  void toggle() => state = !state;
}
