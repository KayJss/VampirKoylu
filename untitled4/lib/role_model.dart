class RoleModel {
  String RoleName;
  String RoleDescription;
  RoleModel(this.RoleDescription, this.RoleName);

  static List<RoleModel> fackRoles() {
    List<RoleModel> roleModels = Roles.values.map((role) {
      switch (role) {
        case Roles.vampir:
          return RoleModel(
              "A supernatural being who feeds on blood.", "Vampir");
        case Roles.koylu:
          return RoleModel(
              "A simple villager with no special powers.", "Koylu");
        case Roles.doktor:
          return RoleModel(
              "A healer who can save lives during the night.", "Doktor");
        case Roles.soytari:
          return RoleModel(
              "A jester who tries to get themselves eliminated.", "Soytari");
        case Roles.avci:
          return RoleModel(
              "A hunter who can take someone down with them when they die.",
              "Avci");
        case Roles.mafya:
          return RoleModel(
              "A member of the mafia trying to eliminate the villagers.",
              "Mafya");
        case Roles.ciftci:
          return RoleModel("A farmer who supports the villagers.", "Ciftci");
        case Roles.gozcu:
          return RoleModel(
              "A watchman who observes and gathers information.", "Gozcu");
      }
    }).toList();

    return roleModels;
  }
}

enum Roles {
  vampir,
  koylu,
  doktor,
  soytari,
  avci,
  mafya,
  ciftci,
  gozcu,
}

extension on Roles {
  String get getRoleDescription {
    switch (this) {
      case Roles.vampir:
        return "A supernatural being who feeds on blood.";
      case Roles.koylu:
        return "A simple villager with no special powers.";
      case Roles.doktor:
        return "A healer who can save lives during the night.";
      case Roles.soytari:
        return "A jester who tries to get themselves eliminated.";
      case Roles.avci:
        return "A hunter who can take someone down with them when they die.";
      case Roles.mafya:
        return "A member of the mafia trying to eliminate the villagers.";
      case Roles.ciftci:
        return "A farmer who supports the villagers.";
      case Roles.gozcu:
        return "A watchman who observes and gathers information.";
    }
  }
}
