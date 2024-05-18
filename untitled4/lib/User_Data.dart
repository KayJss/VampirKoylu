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
 static List<Userdata> testusers() {
  // Creating a list to hold Userdata objects
  List<Userdata> testusers = [];

  // Adding Userdata objects to the list
  testusers.add(Userdata("user1", 1, "user1@example.com", true));
  testusers.add(Userdata("user2", 2, "user2@example.com", false));
  testusers.add(Userdata("user3", 3, "user3@example.com", true));
  testusers.add(Userdata("user4", 4, "user4@example.com", false));
  testusers.add(Userdata("user5", 5, "user5@example.com", true));

  return testusers;
}
}