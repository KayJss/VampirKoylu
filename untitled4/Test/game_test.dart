import 'package:untitled4/functions.dart';
import 'package:untitled4/game_controller/init_controller.dart';

void main() {
  var game = InitController(userList: Userdata.testusers());

  print(game.players);
  print(game.players.length);
}
