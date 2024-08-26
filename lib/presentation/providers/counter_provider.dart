import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart'; // El archivo que se generará

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0; // Inicializa el contador en 0

  void increment() => state++; // Incrementa el contador
}
