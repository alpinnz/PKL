import 'package:flutter/material.dart';

import 'itemCategories_widget.dart';

class ListCategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ItemCategoriesWidget('Men'),
                ItemCategoriesWidget('Women'),
                ItemCategoriesWidget('Devices'),
                ItemCategoriesWidget('Gadgets'),
                ItemCategoriesWidget('Gaming')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
