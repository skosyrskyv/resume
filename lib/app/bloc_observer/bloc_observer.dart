import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverOverrides extends BlocObserver {
  // final Logger logger;

  BlocObserverOverrides() : super();

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}
