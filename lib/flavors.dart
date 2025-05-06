enum Flavor { development, staging, production }

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return '[DEV] Sport';
      case Flavor.staging:
        return '[STAGING] Sport';
      case Flavor.production:
        return 'Sport';
    }
  }
}
