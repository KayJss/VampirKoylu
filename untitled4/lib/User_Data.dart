class Userdata {
  String username;
  String? userId;
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
    testusers.add(Userdata("user1", "1", "user1@example.com", true));
    testusers.add(Userdata("user2", '2', "user2@example.com", false));
    testusers.add(Userdata("user3", '3', "user3@example.com", true));
    testusers.add(Userdata("user4", '4', "user4@example.com", false));
    testusers.add(Userdata("user5", '5', "user5@example.com", true));
    testusers.add(Userdata("user6", '6', "user5@example.com", true));
    testusers.add(Userdata("user7", '7', "user5@example.com", true));
    testusers.add(Userdata("user8", '8', "user5@example.com", true));
    testusers.add(Userdata("user9", '9', "user5@example.com", true));
    testusers.add(Userdata("user10", '10', "user5@example.com", true));
    testusers.add(Userdata("user11", '11', "user5@example.com", true));
    testusers.add(Userdata("user12", '12', "user5@example.com", true));
    testusers.add(Userdata("user13", '13', "user5@example.com", true));
    testusers.add(Userdata("user14", '14', "user5@example.com", true));

    return testusers;
  }
}
