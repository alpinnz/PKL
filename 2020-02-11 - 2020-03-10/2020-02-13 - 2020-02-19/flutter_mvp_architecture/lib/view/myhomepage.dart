import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/model/model.dart';
import 'package:flutter_mvp_architecture/presenter/presenter.dart';
import 'package:flutter_mvp_architecture/view/view.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final AppPresenter presenter;

  MyHomePage(this.presenter, {this.title, Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements AppView {
  AppModel _appModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _appModel.controller1,
          ),
          TextField(
            controller: _appModel.controller2,
          ),
          RaisedButton(
            onPressed: () => this.widget.presenter.buttomClick(),
            child: Icon(Icons.add),
          ),
          Text(
            'result : ${_appModel.result}',
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }

  @override
  void refreshData(AppModel model) {
    setState(() {
      this._appModel = model;
    });
  }

  @override
  void initState() {
    super.initState();
    this.widget.presenter.view = this;
  }
}
