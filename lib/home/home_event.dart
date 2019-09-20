import 'package:dev_fest_app/home/home_bloc.dart';
import 'package:dev_fest_app/home/home_state.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent extends Equatable {
  HomeEvent([List props = const <dynamic>[]]) : super(props);
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  @override
  String toString() => 'LoadHomeEvent';
  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async {
    try {
      await Future.delayed(Duration(seconds: 1));
      return InHomeState();
    } catch (_, stacktrace) {
      print(stacktrace);
      return ErrorHomeState(_?.toString());
    }
  }
}
