import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:veda/app_setup/controller/app_state.dart';
import 'package:veda/app_setup/local_database/local_data_source.dart';

///
final appController = StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  return AppStateNotifier(ref)..appStarted();
});

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier(this._ref) : super(const AppState<void>.started());
  final Ref _ref;

  LocalDataSource get _localDb => _ref.read(localDataSource);

  Future appStarted() async {
    final status = await _localDb.isFirstInstalled();

    state = status
        ? const AppState.showOnBoarding()
        : const AppState.unAuthenticated();
    // : cachedUser.fold(
    //     (value) {
    //       if (value?.accessToken != null && !value!.isDoctor) {
    //         return AppState<dynamic>.authenticated(value);
    //       } else if (value?.accessToken != null && value!.isDoctor) {
    //         return AppState<dynamic>.authenticatedDoctor(value);
    //       } else {
    //         return const AppState.unAuthenticated();
    //       }
    //     },
    //     (failure) => AppState.unAuthenticated(failure: failure),
    //   );
  }

  void updateAppState(AppState<void> appState) {
    state = appState;
  }
}
