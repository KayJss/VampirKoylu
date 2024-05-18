class GamePool{
  int gameID;
  int userCount;
  String gameRoomName;
  DateTime? createDate;
  String? gameType;

  GamePool(this.gameID,this.userCount, this.gameRoomName){
    createDate = DateTime.now();
  }
}