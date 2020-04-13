import 'package:app_my_shopping/src/widgets/ListBestSelling_widget.dart';
import 'package:app_my_shopping/src/widgets/ListCart_widget.dart';
import 'package:app_my_shopping/src/widgets/ListCategories_widget.dart';
import 'package:app_my_shopping/src/widgets/ListProduct_widget.dart';
import 'package:app_my_shopping/src/widgets/Search_widget.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: ListCartWidget(),
        ),
      ],
    );
  }
}
