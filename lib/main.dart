import 'package:asroo_store/asroo_store.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'core/app/env.variables.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]).then((_) {
    runApp(const AsrooStoreApp());
  } );

}






