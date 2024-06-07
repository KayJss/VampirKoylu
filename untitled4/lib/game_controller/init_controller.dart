import 'dart:math';

import '../functions.dart';

class InitController {
  final List<Userdata> userList;

  Map<String, Roles> players = {};

  final Random _random = Random();

  InitController({required this.userList}) {
    _asignRules();
  }

  void _asignRules() {
    var userAvilableList = userList;

    ///get how many vampier in the game
    int vampiresNumber = (userList.length / 4).round();

    print("userList length is: ${userAvilableList.length}");
    print("vampier number is: $vampiresNumber");

    /// asign vimpier
    /// for each vampier it will remove from the list after it added
    for (int i = 0; i < vampiresNumber; i++) {
      String getUser = _getRandomName(userAvilableList);
      players.addAll({getUser: Roles.vampir});
      userAvilableList.removeWhere((element) => element.userId == getUser);
    }

    print("left userList length is: ${userAvilableList.length}");

    /// asign doctor
    /// asign scooter
    /// vileger
    for (var user in userList) {}
  }

  String _getRandomName(List<Userdata> userList) {
    return userList[_random.nextInt(userList.length)].userId.toString();
  }
}
