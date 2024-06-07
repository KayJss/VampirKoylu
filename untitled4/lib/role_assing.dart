import 'dart:math';
import 'functions.dart';

void RoleAssing() {
  Map<String, Roles> userRoles = {};

  var userList = Userdata.testusers();
  var roleList = RoleModel.fackRoles();
  Random random = Random();

  String getRandomName() {
    return userList[random.nextInt(userList.length)].userId.toString();
  }

  String getRandomRoles() {
    return roleList[random.nextInt(roleList.length)].RoleName;
  }

  int spoter = (userList.length / 6).round();
  int vampire = (userList.length / 4).round();

  for (int i = 0; i < vampire; i++) {
    String RandomVampir = getRandomName();
    userRoles[RandomVampir] = Roles.vampir;
    userList.remove(RandomVampir);
  }

  for (int i = 0; i < spoter; i++) {
    String RandomSpoter = getRandomName();
    userRoles[RandomSpoter] = Roles.gozcu;
    userList.remove(RandomSpoter);
  }

  for (var user in userList) {
    String RandomVilliger = getRandomName();
    userRoles[RandomVilliger] = Roles.koylu;
    userList.remove(RandomVilliger);
  }

  String randomrole = getRandomRoles().toString();

  print(userRoles);
  print(randomrole);
}
