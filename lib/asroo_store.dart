import 'package:flutter/material.dart';

import 'core/app/env.variables.dart';

class AsrooStore extends StatelessWidget {
  const AsrooStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asroo store"),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: EnvVariable.instance.debugMode,

        home:AsrooStore()
    );
  }
}
