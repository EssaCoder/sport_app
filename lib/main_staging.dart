import 'package:sport_app/flavors.dart';
import 'package:sport_app/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.staging;
  await runner.main();
}
