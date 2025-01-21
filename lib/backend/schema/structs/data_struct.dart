// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    String? token,
    UserStruct? user,
    ChurchStruct? church,
  })  : _token = token,
        _user = user,
        _church = church;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  // "church" field.
  ChurchStruct? _church;
  ChurchStruct get church => _church ?? ChurchStruct();
  set church(ChurchStruct? val) => _church = val;

  void updateChurch(Function(ChurchStruct) updateFn) {
    updateFn(_church ??= ChurchStruct());
  }

  bool hasChurch() => _church != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        token: data['token'] as String?,
        user: data['user'] is UserStruct
            ? data['user']
            : UserStruct.maybeFromMap(data['user']),
        church: data['church'] is ChurchStruct
            ? data['church']
            : ChurchStruct.maybeFromMap(data['church']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'user': _user?.toMap(),
        'church': _church?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'church': serializeParam(
          _church,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        church: deserializeStructParam(
          data['church'],
          ParamType.DataStruct,
          false,
          structBuilder: ChurchStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        token == other.token &&
        user == other.user &&
        church == other.church;
  }

  @override
  int get hashCode => const ListEquality().hash([token, user, church]);
}

DataStruct createDataStruct({
  String? token,
  UserStruct? user,
  ChurchStruct? church,
}) =>
    DataStruct(
      token: token,
      user: user ?? UserStruct(),
      church: church ?? ChurchStruct(),
    );
