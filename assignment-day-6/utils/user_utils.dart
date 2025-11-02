import '../data/customer_data.dart';
import '../data/admin_data.dart';
import '../models/Customer.dart';
import '../models/admin.dart';

dynamic findUserByEmail(String email) {
  final allUsers = [...customers, ...admins];
  final result = allUsers.where((u) => u.email == email);
  return result.isNotEmpty ? result.first : null;
}

List<dynamic> sortUsersByEmail(List<dynamic> users) {
  users.sort((a, b) => a.email.compareTo(b.email));
  return users;
}

List<Admin> getAdminsByPermission(String permission) {
  return admins.where((a) => a.permissions.contains(permission)).toList();
}

List<Customer> getCustomersByRegion(String region) {
  return customers.where((c) => c.address == region).toList();
}
