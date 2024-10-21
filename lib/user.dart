import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

// ignore_for_file: constant_identifier_names
@JsonSerializable()
class User {
    int id;
    String email;
    String login;
    @JsonKey(name: 'first_name')
    String firstName;
    @JsonKey(name: 'last_name')
    String lastName;
    @JsonKey(name: 'usual_full_name')
    String usualFullName;
    @JsonKey(name: 'usual_first_name')
    dynamic usualFirstName;
    String url;
    String phone;
    String displayname;
    String kind;
    Image image;
    bool? staff;
    @JsonKey(name: 'correction_point')
    int correctionPoint;
    @JsonKey(name: 'pool_month')
    String poolMonth;
    @JsonKey(name: 'pool_year')
    String poolYear;
    String location;
    int wallet;
    @JsonKey(name: 'anonymize_date')
    DateTime anonymizeDate;
    @JsonKey(name: 'data_erasure_date')
    DateTime dataErasureDate;
    @JsonKey(name: 'created_at')
    DateTime createdAt;
    @JsonKey(name: 'updated_at')
    DateTime updatedAt;
    @JsonKey(name: 'alumnized_at')
    dynamic alumnizedAt;
    bool? alumni;
    bool? active;
    List<dynamic> groups;
    @JsonKey(name: 'cursurs_users')
    List<CursusUser> cursusUsers;
    @JsonKey(name: 'projects_users')
    List<ProjectsUser> projectsUsers;
    @JsonKey(name: 'languages_users')
    List<LanguagesUser> languagesUsers;
    List<Achievement> achievements;
    List<Title> titles;
    @JsonKey(name: 'titles_users')
    List<TitlesUser> titlesUsers;
    List<dynamic> partnerships;
    List<dynamic> patroned;
    List<dynamic> patroning;
    @JsonKey(name: 'expertises_users')
    List<dynamic> expertisesUsers;
    List<dynamic> roles;
    List<Campus> campus;
    @JsonKey(name: 'campus_users')
    List<CampusUser> campusUsers;

    User({
        required this.id,
        required this.email,
        required this.login,
        required this.firstName,
        required this.lastName,
        required this.usualFullName,
        required this.usualFirstName,
        required this.url,
        required this.phone,
        required this.displayname,
        required this.kind,
        required this.image,
        required this.staff,
        required this.correctionPoint,
        required this.poolMonth,
        required this.poolYear,
        required this.location,
        required this.wallet,
        required this.anonymizeDate,
        required this.dataErasureDate,
        required this.createdAt,
        required this.updatedAt,
        required this.alumnizedAt,
        required this.alumni,
        required this.active,
        required this.groups,
        required this.cursusUsers,
        required this.projectsUsers,
        required this.languagesUsers,
        required this.achievements,
        required this.titles,
        required this.titlesUsers,
        required this.partnerships,
        required this.patroned,
        required this.patroning,
        required this.expertisesUsers,
        required this.roles,
        required this.campus,
        required this.campusUsers,
    });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Achievement {
    int id;
    String name;
    String description;
    Tier tier;
    Kind kind;
    bool? visible;
    String image;
    @JsonKey(name: 'nbr_of_success')
    int? nbrOfSuccess;
    @JsonKey(name: 'users_url')
    String usersUrl;

    Achievement({
        required this.id,
        required this.name,
        required this.description,
        required this.tier,
        required this.kind,
        required this.visible,
        required this.image,
        required this.nbrOfSuccess,
        required this.usersUrl,
    });
  factory Achievement.fromJson(Map<String, dynamic> json) => _$AchievementFromJson(json);
  Map<String, dynamic> toJson() => _$AchievementToJson(this);
}

enum Kind {
  pedagogy,
  project,
  scolarity,
  social
}

enum Tier {
  challenge,
  easy,
  hard,
  medium,
  none
}

@JsonSerializable()
class Campus {
    int id;
    String name;
    @JsonKey(name: 'time_zone')
    String timeZone;
    Language language;
    @JsonKey(name: 'users_count')
    int usersCount;
    @JsonKey(name: 'vogsphere_id')
    int vogsphereId;
    String country;
    String address;
    String zip;
    String city;
    String website;
    String facebook;
    String twitter;
    bool? active;
    bool? public;
    @JsonKey(name: 'email_extension')
    String emailExtension;
    @JsonKey(name: 'default_hidden_phone')
    bool? defaultHiddenPhone;

    Campus({
        required this.id,
        required this.name,
        required this.timeZone,
        required this.language,
        required this.usersCount,
        required this.vogsphereId,
        required this.country,
        required this.address,
        required this.zip,
        required this.city,
        required this.website,
        required this.facebook,
        required this.twitter,
        required this.active,
        required this.public,
        required this.emailExtension,
        required this.defaultHiddenPhone,
    });
  factory Campus.fromJson(Map<String, dynamic> json) => _$CampusFromJson(json);
  Map<String, dynamic> toJson() => _$CampusToJson(this);
}

@JsonSerializable()
class Language {
    int id;
    String name;
    String identifier;
    @JsonKey(name: 'created_at')
    DateTime createdAt;
    @JsonKey(name: 'updated_at')
    DateTime updatedAt;

    Language({
        required this.id,
        required this.name,
        required this.identifier,
        required this.createdAt,
        required this.updatedAt,
    });
  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

@JsonSerializable()
class CampusUser {
    int id;
    @JsonKey(name: 'user_id')
    int userId;
    @JsonKey(name: 'campus_id')
    int campusId;
    @JsonKey(name: 'is_primary')
    bool? isPrimary;
    @JsonKey(name: 'created_at')
    DateTime createdAt;
    @JsonKey(name: 'updated_at')
    DateTime updatedAt;

    CampusUser({
        required this.id,
        required this.userId,
        required this.campusId,
        required this.isPrimary,
        required this.createdAt,
        required this.updatedAt,
    });
  factory CampusUser.fromJson(Map<String, dynamic> json) => _$CampusUserFromJson(json);
  Map<String, dynamic> toJson() => _$CampusUserToJson(this);
}

@JsonSerializable()
class CursusUser {
    String? grade;
    double level;
    List<Skill> skills;
    @JsonKey(name: 'blackholed_at')
    dynamic blackholedAt;
    int id;
    @JsonKey(name: 'begin_at')
    DateTime beginAt;
    @JsonKey(name: 'end_at')
    DateTime? endAt;
    @JsonKey(name: 'cursus_id')
    int cursusId;
    @JsonKey(name: 'has_coalition')
    bool? hasCoalition;
    @JsonKey(name: 'created_at')
    DateTime createdAt;
    @JsonKey(name: 'updated_at')
    DateTime updatedAt;
    UserClass user;
    Cursus cursus;

    CursusUser({
        required this.grade,
        required this.level,
        required this.skills,
        required this.blackholedAt,
        required this.id,
        required this.beginAt,
        required this.endAt,
        required this.cursusId,
        required this.hasCoalition,
        required this.createdAt,
        required this.updatedAt,
        required this.user,
        required this.cursus,
    });
  factory CursusUser.fromJson(Map<String, dynamic> json) => _$CursusUserFromJson(json);
  Map<String, dynamic> toJson() => _$CursusUserToJson(this);
}

@JsonSerializable()
class Cursus {
    int id;
    @JsonKey(name: 'created_at')
    DateTime createdAt;
    String name;
    String slug;
    String kind;

    Cursus({
        required this.id,
        required this.createdAt,
        required this.name,
        required this.slug,
        required this.kind,
    });
  factory Cursus.fromJson(Map<String, dynamic> json) => _$CursusFromJson(json);
  Map<String, dynamic> toJson() => _$CursusToJson(this);
}

@JsonSerializable()
class Skill {
  int id;
  String name;
  double level;

  Skill({
      required this.id,
      required this.name,
      required this.level,
  });
  
  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}

@JsonSerializable()
class UserClass {
  int id;
  String email;
  String login;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: 'usual_full_name')
  String usualFullName;
  @JsonKey(name: 'usual_first_name')
  dynamic usualFirstName;
  String url;
  String phone;
  String displayname;
  String kind;
  Image image;
  bool? staff;
  @JsonKey(name: 'correction_point')
  int correctionPoint;
  @JsonKey(name: 'pool_month')
  String poolMonth;
  @JsonKey(name: 'pool_year')
  String poolYear;
  String location;
  int wallet;
  @JsonKey(name: 'anonymize_date')
  DateTime anonymizeDate;
  @JsonKey(name: 'data_erasure_date')
  DateTime dataErasureDate;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;
  @JsonKey(name: 'alumnized_at')
  dynamic alumnizedAt;
  bool? alumni;
  bool? active;

  UserClass({
      required this.id,
      required this.email,
      required this.login,
      required this.firstName,
      required this.lastName,
      required this.usualFullName,
      required this.usualFirstName,
      required this.url,
      required this.phone,
      required this.displayname,
      required this.kind,
      required this.image,
      required this.staff,
      required this.correctionPoint,
      required this.poolMonth,
      required this.poolYear,
      required this.location,
      required this.wallet,
      required this.anonymizeDate,
      required this.dataErasureDate,
      required this.createdAt,
      required this.updatedAt,
      required this.alumnizedAt,
      required this.alumni,
      required this.active,
  });
  factory UserClass.fromJson(Map<String, dynamic> json) => _$UserClassFromJson(json);
  Map<String, dynamic> toJson() => _$UserClassToJson(this);
}

@JsonSerializable()
class Image {
  String link;
  Versions versions;

  Image({
      required this.link,
      required this.versions,
  });
factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Versions {
  String large;
  String medium;
  String small;
  String micro;

  Versions({
    required this.large,
    required this.medium,
    required this.small,
    required this.micro,
  });
  factory Versions.fromJson(Map<String, dynamic> json) => _$VersionsFromJson(json);
  Map<String, dynamic> toJson() => _$VersionsToJson(this);
}

@JsonSerializable()
class LanguagesUser {
  int id;
  @JsonKey(name: 'language_id')
  int languageId;
  @JsonKey(name: 'user_id')
  int userId;
  int position;
  @JsonKey(name: 'created_at')
  DateTime createdAt;

  LanguagesUser({
      required this.id,
      required this.languageId,
      required this.userId,
      required this.position,
      required this.createdAt,
  });
  factory LanguagesUser.fromJson(Map<String, dynamic> json) => _$LanguagesUserFromJson(json);
  Map<String, dynamic> toJson() => _$LanguagesUserToJson(this);
}

@JsonSerializable()
class ProjectsUser {
  int id;
  int occurrence;
  @JsonKey(name: 'final_mark')
  int? finalMark;
  Status status;
  bool? validated;
  @JsonKey(name: 'current_team_id')
  int currentTeamId;
  Project project;
  @JsonKey(name: 'cursus_ids')
  List<int> cursusIds;
  @JsonKey(name: 'marked_at')
  DateTime? markedAt;
  bool? marked;
  @JsonKey(name: 'retriable_at')
  DateTime? retriableAt;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;

  ProjectsUser({
    required this.id,
    required this.occurrence,
    required this.finalMark,
    required this.status,
    required this.validated,
    required this.currentTeamId,
    required this.project,
    required this.cursusIds,
    required this.markedAt,
    required this.marked,
    required this.retriableAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProjectsUser.fromJson(Map<String, dynamic> json) => _$ProjectsUserFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectsUserToJson(this);
}

@JsonSerializable()
class Project {
  int id;
  String name;
  String slug;
  @JsonKey(name: 'parent_id')
  dynamic parentId;

  Project({
    required this.id,
    required this.name,
    required this.slug,
    required this.parentId,
  });
  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

enum Status {
    finished,
    in_progress
}

@JsonSerializable()
class Title {
  int id;
  String name;

  Title({
    required this.id,
    required this.name,
  });
  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}
@JsonSerializable()
class TitlesUser {
  int id;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'title_id')
  int titleId;
  bool? selected;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;

  TitlesUser({
    required this.id,
    required this.userId,
    required this.titleId,
    required this.selected,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory TitlesUser.fromJson(Map<String, dynamic> json) => _$TitlesUserFromJson(json);
  Map<String, dynamic> toJson() => _$TitlesUserToJson(this);
}
