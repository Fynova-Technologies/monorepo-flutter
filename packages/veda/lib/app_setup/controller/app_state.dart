import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:veda/app_setup/errors/failure.dart';

part 'app_state.freezed.dart';

///
@freezed
class AppState<T> with _$AppState<T> {
  ///
  const factory AppState.started() = AppStarted<T>;

  ///
  const factory AppState.showOnBoarding() = OnBoarding<T>;

  ///
  const factory AppState.authenticated(T data) = Authenticated<T>;

  ///
  const factory AppState.unAuthenticated({Failure? failure}) =
      UnAuthenticated<T>;
}
