// import 'package:design_patterns/creational/singleton/counter.dart';

import 'package:design_patterns/factory/concrete_factory.dart';
// import 'package:design_patterns/factory/payment.dart';
// import 'package:design_patterns/factory/payment_factory.dart';

void main(List<String> arguments) {
  // final Counter counterA = Counter();
  // final Counter counterB = Counter();
  // print(counterA.count);
  // counterA.increment();
  // print(counterA.count);
  // counterB.increment();
  // print(counterA.count);
  // counterA.increment();
  // print(counterB.count);

  //? ======================== Factory ===================
  // final Payment payment = PaymentFactory.creat("cach");
  // payment.pay(40);

  processPaymentFactory(CreditCardPaymentFactory(), 50);
}
