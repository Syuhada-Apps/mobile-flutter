class Item {
  final int id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String number;
  final String address;
  final String gender;
  final String password;
  final String repassword;

  Item({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.number,
    required this.address,
    required this.gender,
    required this.password,
    required this.repassword,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
      email: json['email'],
      number: json['number'],
      address: json['address'],
      gender: json['gender'],
      password: json['password'],
      repassword: json['repassword'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        // Fix bug: first_name sebelumnya salah mereferensikan last_name
        'first_name': firstName,
        'last_name': lastName,
        'username': username,
        'email': email,
        'number': number,
        'address': address,
        'gender': gender,
        'password': password,
        'repassword': repassword
      };
}
