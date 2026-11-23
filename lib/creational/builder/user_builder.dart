import 'package:design_patterns/creational/builder/user.dart';

class UserBuilder {
  String? _name;
  String? _email;
  int? _age;
  String? _phone;
  String? _address;
  List<String>? _roles;

  UserBuilder setName(String name) {
    _name = name;
    return this;
  }

  UserBuilder setEmail(String email) {
    _email = email;
    return this;
  }

  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  UserBuilder setAdress(String address) {
    _address = address;
    return this;
  }

  UserBuilder setRoles(List<String> roles) {
    _roles = List<String>.from(roles); // تنشئ List جديدة تحتوي على نفس العناصر الموجودة في القائمة الأصلية.
    return this;
  }

  //? ========================  Builder state ==================
  // UserBuilder reset() {
  //   _name = null;
  //   _email = null;
  //   _age = null;
  //   _phone = null;
  //   _address = null;
  //   return this;
  // }

  // User build() {
  //   if (_name == null || _email == null || _age == null) {
  //     throw Exception('Name and Email and Age are Required');
  //   }
  //   final user = User(
  //     name: _name!,
  //     email: _email!,
  //     age: _age!,
  //     phone: _phone,
  //     address: _address,
  //   );

  //   reset();
  //   return user;
  // }

  User build() {
    if (_name == null || _email == null || _age == null) {
      throw Exception('Name and Email and Age are Required');
    }
    return User(
      name: _name!,
      email: _email!,
      age: _age!,
      phone: _phone,
      address: _address,
      roles: List<String>.from(_roles ?? []) // استخدمنا List.from() مرة أخرى حتى لا نشارك القائمة الداخلية للـ Builder مع الـ User النهائي
    );
  }
}
