import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dev_fest_app/home/index.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static final HomeBloc _homeBlocSingleton = HomeBloc._internal();

  factory HomeBloc() {
    return _homeBlocSingleton;
  }

  HomeBloc._internal();

  @override
  HomeState get initialState => InitialHomeState();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    try {
      yield InitialHomeState();
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stacktrace) {
      print('$_ $stacktrace');
      yield currentState;
    }
  }
}
