import 'package:hive/hive.dart';

// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:veda/app_setup/local_database/hive/hive_const.dart';

class HiveSetup {
  HiveSetup._();

  static Future get initHive => _initHive();

  static Future _initHive() async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);
  }
}

Future<void> clearHive() async {
  await Hive.deleteBoxFromDisk(HIVE_TOKEN_BOX);
  await Hive.deleteBoxFromDisk(HIVE_USER_BOX);
}

Future<LazyBox> openBox(String name) async {
  return Hive.isBoxOpen(name)
      ? Hive.lazyBox(name)
      : await Hive.openLazyBox(name);
}
