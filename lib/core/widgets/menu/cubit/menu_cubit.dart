import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'menu_state.dart';
part 'menu_cubit.freezed.dart';

@injectable
class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(const MenuState.hidden());

  void show() => emit(const MenuState.shown());
  void hide() => emit(const MenuState.hidden());
}
