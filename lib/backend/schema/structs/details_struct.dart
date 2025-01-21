// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailsStruct extends BaseStruct {
  DetailsStruct({
    int? userId,
    String? fullName,
    String? avatar,
    String? type,
    String? title,
    String? gender,
    String? phone,
    String? address,
    String? district,
    String? city,
    String? country,
    String? birthday,
  })  : _userId = userId,
        _fullName = fullName,
        _avatar = avatar,
        _type = type,
        _title = title,
        _gender = gender,
        _phone = phone,
        _address = address,
        _district = district,
        _city = city,
        _country = country,
        _birthday = birthday;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  set district(String? val) => _district = val;

  bool hasDistrict() => _district != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  set birthday(String? val) => _birthday = val;

  bool hasBirthday() => _birthday != null;

  static DetailsStruct fromMap(Map<String, dynamic> data) => DetailsStruct(
        userId: castToType<int>(data['userId']),
        fullName: data['fullName'] as String?,
        avatar: data['avatar'] as String?,
        type: data['type'] as String?,
        title: data['title'] as String?,
        gender: data['gender'] as String?,
        phone: data['phone'] as String?,
        address: data['address'] as String?,
        district: data['district'] as String?,
        city: data['city'] as String?,
        country: data['country'] as String?,
        birthday: data['birthday'] as String?,
      );

  static DetailsStruct? maybeFromMap(dynamic data) =>
      data is Map ? DetailsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'fullName': _fullName,
        'avatar': _avatar,
        'type': _type,
        'title': _title,
        'gender': _gender,
        'phone': _phone,
        'address': _address,
        'district': _district,
        'city': _city,
        'country': _country,
        'birthday': _birthday,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'district': serializeParam(
          _district,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'birthday': serializeParam(
          _birthday,
          ParamType.String,
        ),
      }.withoutNulls;

  static DetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailsStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        district: deserializeParam(
          data['district'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        birthday: deserializeParam(
          data['birthday'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailsStruct &&
        userId == other.userId &&
        fullName == other.fullName &&
        avatar == other.avatar &&
        type == other.type &&
        title == other.title &&
        gender == other.gender &&
        phone == other.phone &&
        address == other.address &&
        district == other.district &&
        city == other.city &&
        country == other.country &&
        birthday == other.birthday;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        fullName,
        avatar,
        type,
        title,
        gender,
        phone,
        address,
        district,
        city,
        country,
        birthday
      ]);
}

DetailsStruct createDetailsStruct({
  int? userId,
  String? fullName,
  String? avatar,
  String? type,
  String? title,
  String? gender,
  String? phone,
  String? address,
  String? district,
  String? city,
  String? country,
  String? birthday,
}) =>
    DetailsStruct(
      userId: userId,
      fullName: fullName,
      avatar: avatar,
      type: type,
      title: title,
      gender: gender,
      phone: phone,
      address: address,
      district: district,
      city: city,
      country: country,
      birthday: birthday,
    );
