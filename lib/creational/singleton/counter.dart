
//!  في Dart، تهيئة متغيرات static تكون Lazy افتراضيًا أيضًا

class Counter {
  // Private constructor
  Counter._();
  //? =============== الطريقه الاولى انشاء النسخه مباشرة =============
  // static final Counter _instance = Counter._();
  // factory Counter() {
  //   return _instance;
  // }

  //? ================ الطريقه الثانيه انشاء نسخه lazy sengleton ==============

  static Counter? _instance;
  factory Counter() {
    return _instance ??= Counter._();
  }

  int count = 0;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
