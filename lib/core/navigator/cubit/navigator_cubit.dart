import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class NavigatorCubit extends Cubit<int> {
  NavigatorCubit() : super(0);

  void setTab(int index) => emit(index);
}
