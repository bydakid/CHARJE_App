import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CharjeFirebaseUser {
  CharjeFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CharjeFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CharjeFirebaseUser> charjeFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CharjeFirebaseUser>(
      (user) {
        currentUser = CharjeFirebaseUser(user);
        return currentUser!;
      },
    );
