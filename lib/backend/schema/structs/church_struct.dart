// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChurchStruct extends BaseStruct {
  ChurchStruct({
    String? id,
    String? name,
    String? logo,
    int? activated,
    String? awsS3Bucket,
  })  : _id = id,
        _name = name,
        _logo = logo,
        _activated = activated,
        _awsS3Bucket = awsS3Bucket;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  // "activated" field.
  int? _activated;
  int get activated => _activated ?? 0;
  set activated(int? val) => _activated = val;

  void incrementActivated(int amount) => activated = activated + amount;

  bool hasActivated() => _activated != null;

  // "aws_s3_bucket" field.
  String? _awsS3Bucket;
  String get awsS3Bucket => _awsS3Bucket ?? '';
  set awsS3Bucket(String? val) => _awsS3Bucket = val;

  bool hasAwsS3Bucket() => _awsS3Bucket != null;

  static ChurchStruct fromMap(Map<String, dynamic> data) => ChurchStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        logo: data['logo'] as String?,
        activated: castToType<int>(data['activated']),
        awsS3Bucket: data['aws_s3_bucket'] as String?,
      );

  static ChurchStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChurchStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'logo': _logo,
        'activated': _activated,
        'aws_s3_bucket': _awsS3Bucket,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'activated': serializeParam(
          _activated,
          ParamType.int,
        ),
        'aws_s3_bucket': serializeParam(
          _awsS3Bucket,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChurchStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChurchStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        activated: deserializeParam(
          data['activated'],
          ParamType.int,
          false,
        ),
        awsS3Bucket: deserializeParam(
          data['aws_s3_bucket'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChurchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChurchStruct &&
        id == other.id &&
        name == other.name &&
        logo == other.logo &&
        activated == other.activated &&
        awsS3Bucket == other.awsS3Bucket;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, logo, activated, awsS3Bucket]);
}

ChurchStruct createChurchStruct({
  String? id,
  String? name,
  String? logo,
  int? activated,
  String? awsS3Bucket,
}) =>
    ChurchStruct(
      id: id,
      name: name,
      logo: logo,
      activated: activated,
      awsS3Bucket: awsS3Bucket,
    );
