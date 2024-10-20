// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      login: json['login'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      usualFullName: json['usual_full_name'] as String,
      usualFirstName: json['usual_first_name'],
      url: json['url'] as String,
      phone: json['phone'] as String,
      displayname: json['displayname'] as String,
      kind: json['kind'] as String,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      staff: json['staff'] as bool?,
      correctionPoint: (json['correction_point'] as num).toInt(),
      poolMonth: json['pool_month'] as String,
      poolYear: json['pool_year'] as String,
      location: json['location'] as String,
      wallet: (json['wallet'] as num).toInt(),
      anonymizeDate: DateTime.parse(json['anonymize_date'] as String),
      dataErasureDate: DateTime.parse(json['data_erasure_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      alumnizedAt: json['alumnized_at'],
      alumni: json['alumni'] as bool?,
      active: json['active'] as bool?,
      groups: json['groups'] as List<dynamic>,
      cursusUsers: (json['cursurs_users'] as List<dynamic>)
          .map((e) => CursusUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectsUsers: (json['projects_users'] as List<dynamic>)
          .map((e) => ProjectsUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      languagesUsers: (json['languages_users'] as List<dynamic>)
          .map((e) => LanguagesUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
          .toList(),
      titles: (json['titles'] as List<dynamic>)
          .map((e) => Title.fromJson(e as Map<String, dynamic>))
          .toList(),
      titlesUsers: (json['title_users'] as List<dynamic>)
          .map((e) => TitlesUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      partnerships: json['partnerships'] as List<dynamic>,
      patroned: json['patroned'] as List<dynamic>,
      patroning: json['patroning'] as List<dynamic>,
      expertisesUsers: json['expertises_users'] as List<dynamic>,
      roles: json['roles'] as List<dynamic>,
      campus: (json['campus'] as List<dynamic>)
          .map((e) => Campus.fromJson(e as Map<String, dynamic>))
          .toList(),
      campusUsers: (json['campus_users'] as List<dynamic>)
          .map((e) => CampusUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'login': instance.login,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'usual_full_name': instance.usualFullName,
      'usual_first_name': instance.usualFirstName,
      'url': instance.url,
      'phone': instance.phone,
      'displayname': instance.displayname,
      'kind': instance.kind,
      'image': instance.image,
      'staff': instance.staff,
      'correction_point': instance.correctionPoint,
      'pool_month': instance.poolMonth,
      'pool_year': instance.poolYear,
      'location': instance.location,
      'wallet': instance.wallet,
      'anonymize_date': instance.anonymizeDate.toIso8601String(),
      'data_erasure_date': instance.dataErasureDate.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'alumnized_at': instance.alumnizedAt,
      'alumni': instance.alumni,
      'active': instance.active,
      'groups': instance.groups,
      'cursurs_users': instance.cursusUsers,
      'projects_users': instance.projectsUsers,
      'languages_users': instance.languagesUsers,
      'achievements': instance.achievements,
      'titles': instance.titles,
      'title_users': instance.titlesUsers,
      'partnerships': instance.partnerships,
      'patroned': instance.patroned,
      'patroning': instance.patroning,
      'expertises_users': instance.expertisesUsers,
      'roles': instance.roles,
      'campus': instance.campus,
      'campus_users': instance.campusUsers,
    };

Achievement _$AchievementFromJson(Map<String, dynamic> json) => Achievement(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      tier: $enumDecode(_$TierEnumMap, json['tier']),
      kind: $enumDecode(_$KindEnumMap, json['kind']),
      visible: json['visible'] as bool?,
      image: json['image'] as String,
      nbrOfSuccess: (json['nbr_of_success'] as num?)?.toInt(),
      usersUrl: json['users_url'] as String,
    );

Map<String, dynamic> _$AchievementToJson(Achievement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tier': _$TierEnumMap[instance.tier]!,
      'kind': _$KindEnumMap[instance.kind]!,
      'visible': instance.visible,
      'image': instance.image,
      'nbr_of_success': instance.nbrOfSuccess,
      'users_url': instance.usersUrl,
    };

const _$TierEnumMap = {
  Tier.challenge: 'challenge',
  Tier.easy: 'easy',
  Tier.hard: 'hard',
  Tier.medium: 'medium',
  Tier.none: 'none',
};

const _$KindEnumMap = {
  Kind.pedagogy: 'pedagogy',
  Kind.project: 'project',
  Kind.scolarity: 'scolarity',
  Kind.social: 'social',
};

Campus _$CampusFromJson(Map<String, dynamic> json) => Campus(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      timeZone: json['time_zone'] as String,
      language: Language.fromJson(json['language'] as Map<String, dynamic>),
      usersCount: (json['users_count'] as num).toInt(),
      vogsphereId: (json['vogsphere_id'] as num).toInt(),
      country: json['country'] as String,
      address: json['address'] as String,
      zip: json['zip'] as String,
      city: json['city'] as String,
      website: json['website'] as String,
      facebook: json['facebook'] as String,
      twitter: json['twitter'] as String,
      active: json['active'] as bool?,
      public: json['public'] as bool?,
      emailExtension: json['email_extension'] as String,
      defaultHiddenPhone: json['default_hidden_phone'] as bool?,
    );

Map<String, dynamic> _$CampusToJson(Campus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'time_zone': instance.timeZone,
      'language': instance.language,
      'users_count': instance.usersCount,
      'vogsphere_id': instance.vogsphereId,
      'country': instance.country,
      'address': instance.address,
      'zip': instance.zip,
      'city': instance.city,
      'website': instance.website,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'active': instance.active,
      'public': instance.public,
      'email_extension': instance.emailExtension,
      'default_hidden_phone': instance.defaultHiddenPhone,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      identifier: json['identifier'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'identifier': instance.identifier,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

CampusUser _$CampusUserFromJson(Map<String, dynamic> json) => CampusUser(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      campusId: (json['campus_id'] as num).toInt(),
      isPrimary: json['is_primary'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CampusUserToJson(CampusUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'campus_id': instance.campusId,
      'is_primary': instance.isPrimary,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

CursusUser _$CursusUserFromJson(Map<String, dynamic> json) => CursusUser(
      grade: json['grade'] as String?,
      level: (json['level'] as num).toDouble(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      blackholedAt: json['blackholed_at'],
      id: (json['id'] as num).toInt(),
      beginAt: DateTime.parse(json['begin_at'] as String),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      cursusId: (json['cursus_id'] as num).toInt(),
      hasCoalition: json['has_coalition'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      user: UserClass.fromJson(json['user'] as Map<String, dynamic>),
      cursus: Cursus.fromJson(json['cursus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CursusUserToJson(CursusUser instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      'level': instance.level,
      'skills': instance.skills,
      'blackholed_at': instance.blackholedAt,
      'id': instance.id,
      'begin_at': instance.beginAt.toIso8601String(),
      'end_at': instance.endAt?.toIso8601String(),
      'cursus_id': instance.cursusId,
      'has_coalition': instance.hasCoalition,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user': instance.user,
      'cursus': instance.cursus,
    };

Cursus _$CursusFromJson(Map<String, dynamic> json) => Cursus(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      name: json['name'] as String,
      slug: json['slug'] as String,
      kind: json['kind'] as String,
    );

Map<String, dynamic> _$CursusToJson(Cursus instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'slug': instance.slug,
      'kind': instance.kind,
    };

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      level: (json['level'] as num).toDouble(),
    );

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
    };

UserClass _$UserClassFromJson(Map<String, dynamic> json) => UserClass(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      login: json['login'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      usualFullName: json['usual_full_name'] as String,
      usualFirstName: json['usual_first_name'],
      url: json['url'] as String,
      phone: json['phone'] as String,
      displayname: json['displayname'] as String,
      kind: json['kind'] as String,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      staff: json['staff'] as bool?,
      correctionPoint: (json['correction_point'] as num).toInt(),
      poolMonth: json['pool_month'] as String,
      poolYear: json['pool_year'] as String,
      location: json['location'] as String,
      wallet: (json['wallet'] as num).toInt(),
      anonymizeDate: DateTime.parse(json['anonymize_date'] as String),
      dataErasureDate: DateTime.parse(json['data_erasure_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      alumnizedAt: json['alumnized_at'],
      alumni: json['alumni'] as bool?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$UserClassToJson(UserClass instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'login': instance.login,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'usual_full_name': instance.usualFullName,
      'usual_first_name': instance.usualFirstName,
      'url': instance.url,
      'phone': instance.phone,
      'displayname': instance.displayname,
      'kind': instance.kind,
      'image': instance.image,
      'staff': instance.staff,
      'correction_point': instance.correctionPoint,
      'pool_month': instance.poolMonth,
      'pool_year': instance.poolYear,
      'location': instance.location,
      'wallet': instance.wallet,
      'anonymize_date': instance.anonymizeDate.toIso8601String(),
      'data_erasure_date': instance.dataErasureDate.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'alumnized_at': instance.alumnizedAt,
      'alumni': instance.alumni,
      'active': instance.active,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      link: json['link'] as String,
      versions: Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'link': instance.link,
      'versions': instance.versions,
    };

Versions _$VersionsFromJson(Map<String, dynamic> json) => Versions(
      large: json['large'] as String,
      medium: json['medium'] as String,
      small: json['small'] as String,
      micro: json['micro'] as String,
    );

Map<String, dynamic> _$VersionsToJson(Versions instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'micro': instance.micro,
    };

LanguagesUser _$LanguagesUserFromJson(Map<String, dynamic> json) =>
    LanguagesUser(
      id: (json['id'] as num).toInt(),
      languageId: (json['language_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      position: (json['position'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$LanguagesUserToJson(LanguagesUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'user_id': instance.userId,
      'position': instance.position,
      'created_at': instance.createdAt.toIso8601String(),
    };

ProjectsUser _$ProjectsUserFromJson(Map<String, dynamic> json) => ProjectsUser(
      id: (json['id'] as num).toInt(),
      occurrence: (json['occurrence'] as num).toInt(),
      finalMark: (json['final_mark'] as num?)?.toInt(),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      validated: json['validated'] as bool?,
      currentTeamId: (json['current_team_id'] as num).toInt(),
      project: Project.fromJson(json['project'] as Map<String, dynamic>),
      cursusIds: (json['cursus_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      markedAt: json['marked_at'] == null
          ? null
          : DateTime.parse(json['marked_at'] as String),
      marked: json['marked'] as bool?,
      retriableAt: json['retriable_at'] == null
          ? null
          : DateTime.parse(json['retriable_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ProjectsUserToJson(ProjectsUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'occurrence': instance.occurrence,
      'final_mark': instance.finalMark,
      'status': _$StatusEnumMap[instance.status]!,
      'validated': instance.validated,
      'current_team_id': instance.currentTeamId,
      'project': instance.project,
      'cursus_ids': instance.cursusIds,
      'marked_at': instance.markedAt?.toIso8601String(),
      'marked': instance.marked,
      'retriable_at': instance.retriableAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$StatusEnumMap = {
  Status.finished: 'finished',
  Status.in_progress: 'in_progress',
};

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      parentId: json['parent_id'],
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent_id': instance.parentId,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

TitlesUser _$TitlesUserFromJson(Map<String, dynamic> json) => TitlesUser(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      titleId: (json['title_id'] as num).toInt(),
      selected: json['selected'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$TitlesUserToJson(TitlesUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title_id': instance.titleId,
      'selected': instance.selected,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
