import 'package:client_1/app/app.dart';
import 'package:client_1/bootstrap.dart';
import 'package:client_1/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  configureDependencies();
  await bootstrap(() => const App());
}
