// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Test {
  final int id;
  final String name;
  final String address;
  Test({
    required this.id,
    required this.name,
    required this.address,
  });

  // Saya lagi gabut
  int getInt() {
    return 0;
  }

  Test copyWith({
    int? id,
    String? name,
    String? address,
  }) {
    return Test(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) =>
      Test.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Test(id: $id, name: $name, address: $address)';

  @override
  bool operator ==(covariant Test other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.address == address;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ address.hashCode;
}
