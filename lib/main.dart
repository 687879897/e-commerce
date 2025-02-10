import 'package:asroo_store/asroo_store.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'core/app/bloc_observer.dart';
import 'core/app/env.variables.dart';
import 'core/serviec/shared_pref/shared_pref.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPref().instantiatePreferences();

  Bloc.observer = AppBlocObserver();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]).then((_) {
    runApp(const AsrooStoreApp());
  } );

}






