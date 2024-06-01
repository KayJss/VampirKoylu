import 'dart:math';
import 'functions.dart';

void RoleAssing(){

Map<String, roles> userRoles = {};

var userList = Userdata.testusers();
var roleList = RoleModel.fackRoles();
Random random = Random();

String getRandomName() {
 return userList[random.nextInt(userList.length)].userId.toString();
}

String getRandomRoles(){
 return roleList[random.nextInt(roleList.length)].RoleName;
}


int vampire = (userList.length / 4).round();

for(int i = 0; i < vampire; i++){
String RandomVampir = getRandomName();
userRoles[RandomVampir] = roles.vampir;
userList.remove(RandomVampir);

}


String randomrole = getRandomRoles().toString();

print(userRoles);
print(randomrole);
}