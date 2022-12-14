import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BottomNavigatorCubit extends Cubit<int> {
  BottomNavigatorCubit() : super(0);

  void setTab(int index) => emit(index);
}
