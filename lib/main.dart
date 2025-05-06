import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sport_app/app.dart';
import 'package:sport_app/env/env.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SentryFlutter.init(
    (options) {
      options.dsn = Env.SENTRY_DSN;
    },
    appRunner:
        () => runApp(
          EasyLocalization(
            supportedLocales: const [Locale('en'), Locale('ar')],
            path: 'assets/translations',
            fallbackLocale: const Locale('en'),
            startLocale: const Locale('ar'),
            child: const ProviderScope(child: App()),
          ),
        ),
  );
}
