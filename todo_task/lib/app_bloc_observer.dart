import 'dart:developer';

import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {

  @override
  void onChange(BlocBase bloc, Change change) {
    log('onChanged(${bloc.runtimeType}, $change)');
    super.onChange(bloc, change);    
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('onEvent(${bloc.runtimeType}, $event)');
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
