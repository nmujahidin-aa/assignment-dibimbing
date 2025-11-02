import '../models/Customer.dart';

List<Customer> customers = [
  Customer.fromJson({
    "name": "John Doe",
    "email": "john.doe@example.com",
    "password": "password123",
    "address": "Jakarta"
  }),
  Customer.fromJson({
    "name": "Jane Smith",
    "email": "jane.smith@example.com",
    "password": "secure456",
    "address": "Bandung"
  }),
  Customer.fromJson({
    "name": "Andi Pratama",
    "email": "andi.pratama@example.com",
    "password": "flutter789",
    "address": "Surabaya"
  }),
  Customer.fromJson({
    "name": "Siti Rahma",
    "email": "siti.rahma@example.com",
    "password": "coding001",
    "address": "Yogyakarta"
  }),
  Customer.fromJson({
    "name": "Budi Santoso",
    "email": "budi.santoso@example.com",
    "password": "passpass",
    "address": "Semarang"
  }),
];
