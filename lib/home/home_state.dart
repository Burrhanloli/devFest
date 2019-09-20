import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeState extends Equatable {
  HomeState([List props = const <dynamic>[]]) : super(props);
  HomeState getStateCopy();
}

class InitialHomeState extends HomeState {
  @override
  String toString() => 'InitialHomeState';
  @override
  HomeState getStateCopy() {
    return InitialHomeState();
  }
}

class InHomeState extends HomeState {
  @override
  String toString() => 'InHomeState';
  @override
  HomeState getStateCopy() {
    return InHomeState();
  }
}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  ErrorHomeState(this.errorMessage);

  @override
  String toString() => 'ErrorHomeState';
  @override
  ErrorHomeState getStateCopy() {
    return ErrorHomeState(this.errorMessage);
  }
}
