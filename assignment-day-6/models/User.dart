class User {
  String _email;
  String _password;

  User(this._email, this._password);

  String get email => _email;

  bool login(String email, String password) {
    return _email == email && _password == password;
  }

  void displayDetails() {
    print('Email: $_email');
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['email'], json['password']);
  }
}
