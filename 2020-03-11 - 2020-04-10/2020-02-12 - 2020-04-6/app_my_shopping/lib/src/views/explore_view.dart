import 'package:app_my_shopping/src/widgets/ListBestSelling_widget.dart';
import 'package:app_my_shopping/src/widgets/ListCategories_widget.dart';
import 'package:app_my_shopping/src/widgets/ListProduct_widget.dart';
import 'package:app_my_shopping/src/widgets/Search_widget.dart';
import 'package:app_my_shopping/src/widgets/itemProduct_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: SearchWidget(),
          floating: true,
          pinned: true,
          snap: true,
          elevation: 0,
          backgroundColor: Color(0xFFF5F5F5),
        ),
        SliverToBoxAdapter(
          child: ListCategoriesWidget(),
        ),
        SliverToBoxAdapter(
          child: ListBestSellingWidget(),
        ),
        SliverToBoxAdapter(
          child: ListProductWidget('Recommended'),
        ),
      ],
    );
  }
}
