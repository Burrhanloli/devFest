import 'package:bloc/bloc.dart';

import 'index.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  static final ConfigBloc _configBlocSingleton = ConfigBloc._internal();

  factory ConfigBloc() {
    return _configBlocSingleton;
  }

  ConfigBloc._internal();

  bool darkModeOn = false;

  @override
  ConfigState get initialState => InitialConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    try {
      yield InitialConfigState();
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stacktrace) {
      print('$_ $stacktrace');
      yield currentState;
    }
  }
}
