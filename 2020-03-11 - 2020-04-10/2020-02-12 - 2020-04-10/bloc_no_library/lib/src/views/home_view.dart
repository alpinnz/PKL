import 'package:bloc_no_library/src/bloc/color_bloc.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () => bloc.eventSink.add(ColorEvent.to_amber),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () => bloc.eventSink.add(ColorEvent.to_light_blue),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.stateStream,
          initialData: Colors.amber,
          builder: (context, snapshot) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              width: 100,
              height: 100,
              color: snapshot.data,
            );
          },
        ),
      ),
    );
  }
}
