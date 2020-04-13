import 'package:flutter/material.dart';

class ItemCategoriesWidget extends StatelessWidget {

  final String _title;

  ItemCategoriesWidget(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: CircleBorder(),
            child: IconButton(
              onPressed: () => {},
              icon: Icon(Icons.shop),
            ),
          ),
          Text('$_title')
        ],
      ),
    );
  }
}
