import 'package:design_patterns/factory/payment.dart';

class CredetCardPayment implements Payment {
  @override
  void pay(double amount) {
    print("Credet Card Payment : $amount");
  }
}

class CachPayment implements Payment {
  @override
  void pay(double amount) {
    print("cach Payment : $amount");
  }
}

class PaypalPayment implements Payment {
  @override
  void pay(double amount) {
    print("Paypal Payment : $amount");
  }
}
