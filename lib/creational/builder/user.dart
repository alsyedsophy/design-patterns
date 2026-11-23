class User {
  final String name;
  final String email;
  final int age;
  final String? phone;
  final String? address;
  final List<String> roles;

  User({
    required this.name,
    required this.email,
    required this.age,
    this.phone,
    this.address,
    this.roles = const [],
  });
}