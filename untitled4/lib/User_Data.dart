import 'dart:io';
class Userdata {
  String username;
  int? userId;
  int userElo = 0;
  bool userActive = false;
  String userMail;
  DateTime? createdUser;
  Userdata(this.username, this.userId, this.userMail, this.userActive) {
    createdUser = DateTime.now();
  }
}
