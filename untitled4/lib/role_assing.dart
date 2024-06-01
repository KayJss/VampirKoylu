import 'dart:math';
import 'functions.dart';

void RoleAssing(){

Map<String, roles> userRoles = {};

var userList = Userdata.testusers();

String getRandomName() {
 Random random = Random();
 return userList[random.nextInt(userList.length)].userId.toString();
}
int vampire = (userList.length / 4).round();

for(int i = 0; i < vampire; i++){
String RandomVampir = getRandomName();
userRoles[RandomVampir] = roles.vampir;
userList.remove(RandomVampir);

}

print(userRoles);
}