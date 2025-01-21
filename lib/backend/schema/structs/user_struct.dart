// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    String? email,
    int? activated,
    String? type,
    String? changedPassword,
    String? accessQuantity,
    List<RolesStruct>? roles,
    DetailsStruct? details,
  })  : _id = id,
        _email = email,
        _activated = activated,
        _type = type,
        _changedPassword = changedPassword,
        _accessQuantity = accessQuantity,
        _roles = roles,
        _details = details;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "activated" field.
  int? _activated;
  int get activated => _activated ?? 0;
  set activated(int? val) => _activated = val;

  void incrementActivated(int amount) => activated = activated + amount;

  bool hasActivated() => _activated != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "changedPassword" field.
  String? _changedPassword;
  String get changedPassword => _changedPassword ?? '';
  set changedPassword(String? val) => _changedPassword = val;

  bool hasChangedPassword() => _changedPassword != null;

  // "accessQuantity" field.
  String? _accessQuantity;
  String get accessQuantity => _accessQuantity ?? '';
  set accessQuantity(String? val) => _accessQuantity = val;

  bool hasAccessQuantity() => _accessQuantity != null;

  // "roles" field.
  List<RolesStruct>? _roles;
  List<RolesStruct> get roles => _roles ?? const [];
  set roles(List<RolesStruct>? val) => _roles = val;

  void updateRoles(Function(List<RolesStruct>) updateFn) {
    updateFn(_roles ??= []);
  }

  bool hasRoles() => _roles != null;

  // "details" field.
  DetailsStruct? _details;
  DetailsStruct get details => _details ?? DetailsStruct();
  set details(DetailsStruct? val) => _details = val;

  void updateDetails(Function(DetailsStruct) updateFn) {
    updateFn(_details ??= DetailsStruct());
  }

  bool hasDetails() => _details != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
        activated: castToType<int>(data['activated']),
        type: data['type'] as String?,
        changedPassword: data['changedPassword'] as String?,
        accessQuantity: data['accessQuantity'] as String?,
        roles: getStructList(
          data['roles'],
          RolesStruct.fromMap,
        ),
        details: data['details'] is DetailsStruct
            ? data['details']
            : DetailsStruct.maybeFromMap(data['details']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'activated': _activated,
        'type': _type,
        'changedPassword': _changedPassword,
        'accessQuantity': _accessQuantity,
        'roles': _roles?.map((e) => e.toMap()).toList(),
        'details': _details?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'activated': serializeParam(
          _activated,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'changedPassword': serializeParam(
          _changedPassword,
          ParamType.String,
        ),
        'accessQuantity': serializeParam(
          _accessQuantity,
          ParamType.String,
        ),
        'roles': serializeParam(
          _roles,
          ParamType.DataStruct,
          isList: true,
        ),
        'details': serializeParam(
          _details,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        activated: deserializeParam(
          data['activated'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        changedPassword: deserializeParam(
          data['changedPassword'],
          ParamType.String,
          false,
        ),
        accessQuantity: deserializeParam(
          data['accessQuantity'],
          ParamType.String,
          false,
        ),
        roles: deserializeStructParam<RolesStruct>(
          data['roles'],
          ParamType.DataStruct,
          true,
          structBuilder: RolesStruct.fromSerializableMap,
        ),
        details: deserializeStructParam(
          data['details'],
          ParamType.DataStruct,
          false,
          structBuilder: DetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        id == other.id &&
        email == other.email &&
        activated == other.activated &&
        type == other.type &&
        changedPassword == other.changedPassword &&
        accessQuantity == other.accessQuantity &&
        listEquality.equals(roles, other.roles) &&
        details == other.details;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        email,
        activated,
        type,
        changedPassword,
        accessQuantity,
        roles,
        details
      ]);
}

UserStruct createUserStruct({
  int? id,
  String? email,
  int? activated,
  String? type,
  String? changedPassword,
  String? accessQuantity,
  DetailsStruct? details,
}) =>
    UserStruct(
      id: id,
      email: email,
      activated: activated,
      type: type,
      changedPassword: changedPassword,
      accessQuantity: accessQuantity,
      details: details ?? DetailsStruct(),
    );
