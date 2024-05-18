import 'package:untitled4/User_Data.dart';
import 'package:untitled4/role_model.dart';




void main() {
 

  // Printing the role models
  Userdata.testusers().forEach((element) {
    print(element.createdUser);
    print(element.userActive);
    print(element.userMail);
    print(element.userId);
    print(element.userElo);
    print(element.username);

  });
}
