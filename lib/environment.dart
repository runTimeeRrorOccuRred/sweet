// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/app.dart';
import 'package:sweetlifesaver/helpers/locator.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/utils.dart';

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment {
  Environment() {
    // value = this;
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // await FirebaseMessagingProvider.init();
    await SharedPreferenceService.init();

    try {
      setupServiceLocator();
      // await dotenv.load();
    } catch (e) {
      Logger.write(e.toString());
    }
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }
}
