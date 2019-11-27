

import 'package:equatable/equatable.dart';

class HomeEvent extends Equatable{
  HomeEvent([List props = const[]]):super(props);
}

class AppStarted extends HomeEvent{
  @override
  String toString() {
    return "AppStarted";
  }
}

class NameAdded extends HomeEvent{
  final String name;

  NameAdded(this.name):super([name]);

  @override
  String toString() {
    return "AboutPressed";
  }
}