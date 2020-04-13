import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_package/src/bloc/color_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of(context);
    return Container(
      child: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () => bloc.dispatch(ColorEvent.to_amber),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2.5)),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () => bloc.dispatch(ColorEvent.to_light_blue),
            )
          ],
        ),
        appBar: AppBar(
          title: Text('BLoC with flutter_bloc'),
        ),
        body: Center(
          child: BlocBuilder<ColorBloc, Color>(
            builder: (context, currentColor) => AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: 100,
              height: 100,
              color: currentColor,
            ),
          ),
        ),
      ),
    );
  }
}
