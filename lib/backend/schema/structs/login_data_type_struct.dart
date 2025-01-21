// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginDataTypeStruct extends BaseStruct {
  LoginDataTypeStruct({
    DataStruct? data,
  }) : _data = data;

  // "data" field.
  DataStruct? _data;
  DataStruct get data => _data ?? DataStruct();
  set data(DataStruct? val) => _data = val;

  void updateData(Function(DataStruct) updateFn) {
    updateFn(_data ??= DataStruct());
  }

  bool hasData() => _data != null;

  static LoginDataTypeStruct fromMap(Map<String, dynamic> data) =>
      LoginDataTypeStruct(
        data: data['data'] is DataStruct
            ? data['data']
            : DataStruct.maybeFromMap(data['data']),
      );

  static LoginDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LoginDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginDataTypeStruct(
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoginDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginDataTypeStruct && data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

LoginDataTypeStruct createLoginDataTypeStruct({
  DataStruct? data,
}) =>
    LoginDataTypeStruct(
      data: data ?? DataStruct(),
    );
