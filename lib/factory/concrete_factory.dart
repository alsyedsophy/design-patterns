import 'package:design_patterns/factory/payment.dart';
import 'package:design_patterns/factory/payment_factory.dart';
import 'package:design_patterns/factory/payments_way.dart';

class CreditCardPaymentFactory extends PaymentFactory {
  @override
  Payment createPayment() {
    return CredetCardPayment();
  }
}

class CashPaymentFactory extends PaymentFactory {
  @override
  Payment createPayment() {
    return CachPayment();
  }
}

class PayPalPaymentFactory extends PaymentFactory {
  @override
  Payment createPayment() {
    return PaypalPayment();
  }
}

void processPaymentFactory(PaymentFactory factory, double amount) {
  final Payment payment = factory.createPayment();
  payment.pay(amount);
}
