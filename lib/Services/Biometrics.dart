import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth_ios/local_auth_ios.dart';

class BioMetrics {
  final Function callback;

  BioMetrics({required this.callback});

  static final LocalAuthentication _auth = LocalAuthentication();
  static Future<bool> _canAuthenticate() async =>
      await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  static Future<bool> Authenticate() async {
    if (!await _canAuthenticate()) return false;
    // print('Authenticating...');
    try {
      await _auth.authenticate(
        authMessages: const [
          IOSAuthMessages(
            cancelButton: 'Cancel',
          )
        ],
        localizedReason: "Please authenticate to access your account",
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          biometricOnly: true,
        ),
      );

      print('Authenticated');
      return true;
    } catch (e) {
      print("Authentication failed: $e");
      return false;
    }
  }
}
