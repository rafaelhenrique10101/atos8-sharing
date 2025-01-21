import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class Atos8AuthUser {
  Atos8AuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  LoginDataTypeStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<Atos8AuthUser> atos8AuthUserSubject =
    BehaviorSubject.seeded(Atos8AuthUser(loggedIn: false));
Stream<Atos8AuthUser> atos8AuthUserStream() =>
    atos8AuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
