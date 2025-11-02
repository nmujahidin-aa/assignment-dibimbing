import 'models/user.dart';
import 'models/Customer.dart';
import 'models/admin.dart';
import 'data/customer_data.dart';
import 'data/admin_data.dart';
import 'utils/user_utils.dart';

void main() {
  print('=== 🔒 LOGIN TEST  ===');
  var user = customers.first;
  print('Login success: ${user.login("john.doe@example.com", "password123")}');
  print('Login failed: ${user.login("john.doe@example.com", "wrongpass")}');
  print('');

  print('=== 🧬 INHERITANCE ===');
  customers.first.displayDetails();
  print('');
  admins.first.displayDetails();
  print('');

  print('=== 🎭 POLYMORPHISM ===');
  List<User> allUsers = [...customers, ...admins];
  for (var u in allUsers) {
    u.displayDetails();
    print('---');
  }

  print('\n=== 🔍 GLOBAL FUNCTIONS ===');

  var found = findUserByEmail('andi.pratama@example.com');
  print('Found user: ${found != null ? found.email : "Not found"}');

  print('\nSorted customer emails:');
  var sortedCustomers = sortUsersByEmail(customers);
  for (var c in sortedCustomers) {
    print(c.email);
  }

  print('\nAdmin with permission "add":');
  var addAdmins = getAdminsByPermission('add');
  for (var a in addAdmins) {
    print(a.email);
  }

  print('\nCustomers from Surabaya:');
  var surabayaCustomers = getCustomersByRegion('Surabaya');
  for (var c in surabayaCustomers) {
    print(c.name);
  }
}