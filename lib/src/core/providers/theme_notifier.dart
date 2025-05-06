import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_app/src/core/enums/app_theme_mode.dart';

part 'theme_notifier.g.dart';

@Riverpod(keepAlive: true)
class ThemeNotifier extends _$ThemeNotifier {
  @override
  AppThemeMode build() {
    return AppThemeMode.light;
  }

  void switchMode() {
    state =
        state == AppThemeMode.light ? AppThemeMode.dark : AppThemeMode.light;
  }
}
