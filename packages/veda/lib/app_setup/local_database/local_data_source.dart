import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veda/app_setup/local_database/hive/hive_data_source.dart';


final localDataSource = Provider<LocalDataSource>((ref) => HiveDataSource());

abstract class LocalDataSource {
  /* check first installed*/
  Future<bool> isFirstInstalled();
  /* update first installed value*/
  Future<bool> updateFirstInstalled(bool value);

  Future<void> clearDb();

  /* clear access token after expired*/
}
