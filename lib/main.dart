import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'injectables.dart';

FutureOr<void> main() async {
  await configureDependencies();
  runApp(const App());
}
