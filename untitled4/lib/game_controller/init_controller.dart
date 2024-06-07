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

    print(userAvilableList.length);

    ///get how many vampier in the game
    int vampiresNumber = (userList.length / 4).round();
    print("Vampier number $vampiresNumber");
    /// asign vimpier
    /// for each vampier it will remove from the list after it added
    for (int i = 0; i < vampiresNumber; i++) {
      String getUser = _getRandomName(userAvilableList);
      players.addAll({getUser: Roles.vampir});
      userAvilableList.removeWhere((element) => element.userId == getUser);
    }


    /// asign doctor
    int doctorNumber = (userList.length / 10).round();
       print("doctor number $doctorNumber");
    for (int i = 0; i < doctorNumber; i++) {
    String getDoctorUser = _getRandomName(userAvilableList);
    players.addAll({getDoctorUser: Roles.doktor});
    userAvilableList.removeWhere((element) => element.userId == getDoctorUser);
    }
    
    /// asign scooter
    int spoterNumber = (userList.length / 10).round();
     print("spoter number $spoterNumber");
    for (int i = 0; i < spoterNumber; i++) {
    String getSpoterUser = _getRandomName(userAvilableList);
    players.addAll({getSpoterUser: Roles.gozcu});
    userAvilableList.removeWhere((element) => element.userId == getSpoterUser);
    }
    /// vileger
  
  print("avilavle list ${userAvilableList.length}");
    for (int i=0; i< userAvilableList.length; i++) {
  
    String getUser = userAvilableList[i].userId;
    players.addAll({getUser: Roles.koylu});
    
    }
  }

  String _getRandomName(List<Userdata> userList) {
    return userList[_random.nextInt(userList.length)].userId.toString();
  }
}
