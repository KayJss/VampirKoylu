import 'dart:math';
import 'functions.dart';

void RoleAssing(){

Map<String, roles> userRoles = {};

var userList = Userdata.testusers();

String getRandomName() {
 Random random = Random();
 return userList[random.nextInt(userList.length)].userId.toString();
}

String RandomVampir = getRandomName();
userRoles[RandomVampir] = roles.vampir;
userList.remove(RandomVampir);

print(userRoles);
}