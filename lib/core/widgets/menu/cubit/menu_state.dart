part of 'menu_cubit.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.shown() = _Shown;
  const factory MenuState.hidden() = _Hidden;
}
