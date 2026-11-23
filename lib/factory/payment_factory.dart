import 'package:design_patterns/factory/payment.dart';

abstract class PaymentFactory {
  Payment createPayment();
}