import 'package:test/test.dart';
import 'package:untitled4/functions.dart';
import 'package:untitled4/game_controller/init_controller.dart';

void main() {
  test("Asign game for 14 users", () {
    List<Userdata> testusers = [
      Userdata("user1", "1", "user1@example.com", true),
      Userdata("user2", '2', "user2@example.com", false),
      Userdata("user3", '3', "user3@example.com", true),
      Userdata("user4", '4', "user4@example.com", false),
      Userdata("user5", '5', "user5@example.com", true),
      Userdata("user6", '6', "user5@example.com", true),
      Userdata("user7", '7', "user5@example.com", true),
      Userdata("user8", '8', "user5@example.com", true),
      Userdata("user9", '9', "user5@example.com", true),
      Userdata("user10", '10', "user5@example.com", true),
      Userdata("user11", '11', "user5@example.com", true),
      Userdata("user12", '12', "user5@example.com", true),
      Userdata("user13", '13', "user5@example.com", true),
      Userdata("user14", '14', "user5@example.com", true),
    ];

    var game = InitController(userList: testusers);

    //print(game.players);

    bool doesHasDoctor =
        game.players.values.where((player) => player == Roles.doktor).isEmpty
            ? false
            : true;

    bool doesHasScoter =
        game.players.values.where((player) => player == Roles.gozcu).isEmpty
            ? false
            : true;

    print(doesHasDoctor);
    expect(doesHasDoctor, true);
    expect(doesHasScoter, true);
    //expect(int.parse(string), 123);
  });

  test("Asign game for 5 users", () {
    final List<Userdata> testusers = [
      Userdata("user1", "1", "user1@example.com", true),
      Userdata("user2", '2', "user2@example.com", false),
      Userdata("user3", '3', "user3@example.com", true),
      Userdata("user4", '4', "user4@example.com", false),
      Userdata("user5", '5', "user5@example.com", true),
    ];

    var game = InitController(userList: testusers);

    print(game.players);
    bool doesHasDoctor =
        game.players.values.where((player) => player == Roles.doktor).isEmpty
            ? false
            : true;

    bool doesHasScoter =
        game.players.values.where((player) => player == Roles.gozcu).isEmpty
            ? false
            : true;

    expect(game.players.length, 5);
    expect(doesHasDoctor, true);
    expect(doesHasScoter, true);
    //expect(int.parse(string), 123);
  });
}
