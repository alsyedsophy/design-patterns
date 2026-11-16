import 'package:design_patterns/creational/singleton/counter.dart';

void main(List<String> arguments) {
  final Counter counterA = Counter();
  final Counter counterB = Counter();
  print(counterA.count);
  counterA.increment();
  print(counterA.count);
  counterB.increment();
  print(counterA.count);
  counterA.increment();
  print(counterB.count);
}
