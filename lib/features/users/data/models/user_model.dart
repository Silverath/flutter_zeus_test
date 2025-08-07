

import '../../domain/entities/address.dart';
import '../../domain/entities/company.dart';
import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    required super.phone,
    required super.website,
    required super.address,
    required super.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      address: Address(
        street: json['address']['street'],
        suite: json['address']['suite'],
        city: json['address']['city'],
        zipcode: json['address']['zipcode'],
      ),
      company: Company(
        name: json['company']['name'],
        catchPhrase: json['company']['catchPhrase'],
        bs: json['company']['bs'],
      ),
    );
  }
}