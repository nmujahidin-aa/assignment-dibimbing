import '../models/admin.dart';

List<Admin> admins = [
  Admin.fromJson({
    "email": "admin1@example.com",
    "password": "adminpass1",
    "permissions": ["add", "edit", "delete"]
  }),
  Admin.fromJson({
    "email": "admin2@example.com",
    "password": "adminpass2",
    "permissions": ["add", "view"]
  }),
  Admin.fromJson({
    "email": "admin3@example.com",
    "password": "adminpass3",
    "permissions": ["edit", "delete"]
  }),
  Admin.fromJson({
    "email": "admin4@example.com",
    "password": "adminpass4",
    "permissions": ["view"]
  }),
  Admin.fromJson({
    "email": "admin5@example.com",
    "password": "adminpass5",
    "permissions": ["add", "edit"]
  }),
];
