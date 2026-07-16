import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AppConfig {
  static const String webClientId =
      '294331148250-i7qi3o2selklin206h43n6s9bht1ht8m.apps.googleusercontent.com';

  static const String iosClientId =
      '201414172775-1m1fi7dcnkf2e7iuftqtngc3ogdgsvph.apps.googleusercontent.com';

      static const String androidClientId =
      '201414172775-1m1fi7dcnkf2e7iuftqtngc3ogdgsvph.apps.googleusercontent.com';
}

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> continueWithGoogle() async {
    try {
      final GoogleSignIn signIn = GoogleSignIn.instance;

      await signIn.initialize(
      serverClientId: Platform.isIOS
      ? AppConfig.iosClientId
      : AppConfig.androidClientId,
);

      final GoogleSignInAccount googleUser =
          await signIn.authenticate();

      final GoogleSignInAuthentication googleAuth =
          googleUser.authentication;

      final AuthCredential credential =
          GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      debugPrint('Firebase Auth Error: ${e.message}');
      return null;
    } catch (e) {
      debugPrint('Google Sign-In Error: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    await GoogleSignIn.instance.disconnect();
    await _auth.signOut();
  }
}