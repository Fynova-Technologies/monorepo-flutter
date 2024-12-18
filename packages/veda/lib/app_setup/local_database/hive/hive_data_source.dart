import 'package:veda/app_setup/local_database/hive/hive_const.dart';
import 'package:veda/app_setup/local_database/hive/hive_setup.dart';
import 'package:veda/app_setup/local_database/local_data_source.dart';

class HiveDataSource implements LocalDataSource {
  @override
  Future<bool> isFirstInstalled() async {
    try {
      final hiveAuthBox = await openBox(FIRST_INSTALL_BOX);
      final result = await hiveAuthBox.get('status');
      return (result ?? true) as bool;
    } catch (e) {
      return true;
    }
  }

  @override
  Future<bool> updateFirstInstalled(bool value) async {
    try {
      final hiveAuthBox = await openBox(FIRST_INSTALL_BOX);
      await hiveAuthBox.put('status', value);
      final result = await isFirstInstalled();
      return result;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> clearDb() async {
    try {
      clearHive();
      return true;
    } catch (e) {
      return false;
    }
  }
}
