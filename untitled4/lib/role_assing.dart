import 'dart:math';
import 'functions.dart';

void RoleAssing(){

Map<String, RoleModel> userRoles = {};

Userdata getRandomName() {
 Random random = Random();
 var userList = Userdata.testusers();
 return userList[random.nextInt(userList.length)];
}

String randomGuy = getRandomName().toString();

print(randomGuy);

}