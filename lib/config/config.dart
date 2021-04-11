import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MiQBApp
{
  static const String appName = 'app';

  static SharedPreferences sharedPreferences = 'pref' as SharedPreferences;
  static FirebaseUser user = 'user' as FirebaseUser;
  static FirebaseAuth auth = 'auth' as FirebaseAuth;
  static Firestore firestore = 'store' as Firestore ;

  static final String userName = 'name';
  static final String userEmail = 'email';
  static final String userUID = 'uid';
}