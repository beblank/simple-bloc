import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/bloc/home/home_bloc.dart';
import 'package:simple_bloc/bloc/home/home_event.dart';
import 'package:simple_bloc/bloc/home/home_state.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc _homeBloc = HomeBloc();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: _homeBloc,
          builder: (context, state) {
            if (state is Uninitialized) {
              return Center(
                child: Column(
                  children: <Widget>[
                    TextField(
                      onSubmitted: (text) {
                        _homeBloc.dispatch(NameAdded(text));
                      },
                    ),
                  ],
                ),
              );
            } else if (state is ShowName){
               return Center(
                child: Column(
                  children: <Widget>[
                    Text("hello my name is ${state.name}"),
                    RawMaterialButton(
                      onPressed: (){
                        _homeBloc.dispatch(AppStarted());
                      },
                      child: Text("back"),
                    )
                  ],
                ),
              );
            }
          }),
    );
  }
}
