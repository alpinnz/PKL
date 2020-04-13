import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      child: CupertinoTextField(
        keyboardType: TextInputType.text,
        placeholder: 'Search',
        placeholderStyle: TextStyle(
          color: Color(0xFFC4C6CC),
          fontSize: 14.0,
        ),
        prefix: Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
          child: Icon(
            Icons.search,
            color: Color(0xFFC4C6CC),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color(0xFFF0F1F5),
        ),
      ),
    );
  }
}
