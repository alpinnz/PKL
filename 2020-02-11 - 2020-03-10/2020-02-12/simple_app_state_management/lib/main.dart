import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_state_management/application_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(

        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, aplicationColor, _) => Text(
                "Provider State Management",
                style: TextStyle(color: aplicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<ApplicationColor>(
                  builder: (context, aplicationColor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: aplicationColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text("AB")),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBlue,
                        onChanged: (newValue) {
                          applicationColor.isLightBlue = newValue;
                        },
                      ),
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text("LB")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
