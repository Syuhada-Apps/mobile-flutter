class Item {
  final int id;
  final String first_name;
  final String last_name;
  final String username;
  final String email;
  final String number;
  final String address;
  final String gender;
  final String password;
  final String repassword;

  Item({
    required this.id,
    required this.first_name,
    required this.last_name,
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
      first_name: json['first_name'],
      last_name: json['last_name'],
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
        'first_name': last_name,
        'last_name': last_name,
        'username': username,
        'email': email,
        'number': number,
        'address': address,
        'gender': gender,
        'password': password,
        'repassword': repassword
      };
}
