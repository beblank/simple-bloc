import 'home_event.dart';
import 'home_state.dart';
import 'package:bloc/bloc.dart';
import 'dart:async';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  get initialState => Uninitialized();

  @override
  Stream<HomeState> mapEventToState(event) async* {
    if (event is AppStarted) {
      yield* _mapAppstartedToState();
    } else if (event is NameAdded) {
      yield* _mapShowAboutToState(event.name);
    }
  }

  Stream<HomeState> _mapAppstartedToState() async* {
    yield Uninitialized();
  }

  Stream<HomeState> _mapShowAboutToState(String name) async* {
    yield ShowName(name);
  }
}
