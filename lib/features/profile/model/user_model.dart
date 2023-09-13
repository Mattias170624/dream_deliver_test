class UserModel {
  String name;
  String email;
  dynamic phone;
  dynamic houseNumber;
  String street;
  String city;
  dynamic zip;
  String? instrs;

  UserModel({
    this.name = '',
    this.email = '',
    this.phone = '',
    this.houseNumber = '',
    this.street = '',
    this.city = '',
    this.zip = '',
    this.instrs,
  });
}

enum User {
  phone,
  email,
  name,
  // cvr,
  street,
  houseNr,
  city,
  zip,
  instrs,
  address,
}
