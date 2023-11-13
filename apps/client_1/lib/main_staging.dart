import 'package:client_1/app/app.dart';
import 'package:client_1/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'di/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env.staging');
  configureDependencies();

  await bootstrap(() => const App());
}
