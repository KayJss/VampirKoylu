class RoleModel{
  String RoleName;
  String RoleDescription;
  RoleModel(this.RoleDescription,this.RoleName);



 static List<RoleModel> fackRoles(){
  
     List<RoleModel> roleModels = roles.values.map((role) {
    switch (role) {
      case roles.vampir:
        return RoleModel("A supernatural being who feeds on blood.", "Vampir");
      case roles.koylu:
        return RoleModel("A simple villager with no special powers.", "Koylu");
      case roles.doktor:
        return RoleModel("A healer who can save lives during the night.", "Doktor");
      case roles.soytari:
        return RoleModel("A jester who tries to get themselves eliminated.", "Soytari");
      case roles.avci:
        return RoleModel("A hunter who can take someone down with them when they die.", "Avci");
      case roles.mafya:
        return RoleModel("A member of the mafia trying to eliminate the villagers.", "Mafya");
      case roles.ciftci:
        return RoleModel("A farmer who supports the villagers.", "Ciftci");
      case roles.gozcu:
        return RoleModel("A watchman who observes and gathers information.", "Gozcu");
    }
  }).toList();

  return roleModels;
  }

}

enum roles {
  vampir,
  koylu,
  doktor,
  soytari,
  avci,
  mafya,
  ciftci,
  gozcu,
}

extension on roles {
 

   String get getRoleDescription {
    switch (this) {
     case roles.vampir:
        return "A supernatural being who feeds on blood.";
      case roles.koylu:
        return "A simple villager with no special powers.";
      case roles.doktor:
        return "A healer who can save lives during the night.";
      case roles.soytari:
        return "A jester who tries to get themselves eliminated.";
      case roles.avci:
        return "A hunter who can take someone down with them when they die.";
      case roles.mafya:
        return "A member of the mafia trying to eliminate the villagers.";
      case roles.ciftci:
        return "A farmer who supports the villagers.";
      case roles.gozcu:
        return "A watchman who observes and gathers information.";
    }
  }
}