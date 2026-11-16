class Counter {
  // Private constructor
  Counter._();
  // Sengleton instance
  static final Counter _instance = Counter._();
  // Factory constructor => to make it easy
  factory Counter() {
    return _instance;
  }

  int count = 0;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
