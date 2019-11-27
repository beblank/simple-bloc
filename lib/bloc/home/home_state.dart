

import 'package:equatable/equatable.dart';

class HomeState extends Equatable{
  HomeState([List props = const[]]):super(props);
}

class Uninitialized extends HomeState{
  @override
  String toString() {
    return "Uninitialized";
  }
}

class ShowName extends HomeState{

  final String name;

  ShowName(this.name):super([name]);

  @override
  String toString() {
    return "ShowAboutPressed";
  }
}