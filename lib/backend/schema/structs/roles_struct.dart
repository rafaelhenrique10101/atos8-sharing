// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesStruct extends BaseStruct {
  RolesStruct({
    int? id,
    String? name,
    String? guardName,
    String? displayName,
    String? description,
    int? activated,
  })  : _id = id,
        _name = name,
        _guardName = guardName,
        _displayName = displayName,
        _description = description,
        _activated = activated;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "guardName" field.
  String? _guardName;
  String get guardName => _guardName ?? '';
  set guardName(String? val) => _guardName = val;

  bool hasGuardName() => _guardName != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "activated" field.
  int? _activated;
  int get activated => _activated ?? 0;
  set activated(int? val) => _activated = val;

  void incrementActivated(int amount) => activated = activated + amount;

  bool hasActivated() => _activated != null;

  static RolesStruct fromMap(Map<String, dynamic> data) => RolesStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        guardName: data['guardName'] as String?,
        displayName: data['displayName'] as String?,
        description: data['description'] as String?,
        activated: castToType<int>(data['activated']),
      );

  static RolesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RolesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'guardName': _guardName,
        'displayName': _displayName,
        'description': _description,
        'activated': _activated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'guardName': serializeParam(
          _guardName,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'activated': serializeParam(
          _activated,
          ParamType.int,
        ),
      }.withoutNulls;

  static RolesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RolesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        guardName: deserializeParam(
          data['guardName'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        activated: deserializeParam(
          data['activated'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RolesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RolesStruct &&
        id == other.id &&
        name == other.name &&
        guardName == other.guardName &&
        displayName == other.displayName &&
        description == other.description &&
        activated == other.activated;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, guardName, displayName, description, activated]);
}

RolesStruct createRolesStruct({
  int? id,
  String? name,
  String? guardName,
  String? displayName,
  String? description,
  int? activated,
}) =>
    RolesStruct(
      id: id,
      name: name,
      guardName: guardName,
      displayName: displayName,
      description: description,
      activated: activated,
    );
