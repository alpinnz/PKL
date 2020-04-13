import 'package:app_my_shopping/src/views/cart_view.dart';
import 'package:flutter/material.dart';

import './explore_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: SafeArea(
            bottom: false,
            right: false,
            left: false,
            child: TabBarView(
              children: <Widget>[
                ExploreView(),
                CardView(),
                Container(
                  color: Colors.red,
                ),
              ],
            ),
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: 'Explore',
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
            labelColor: Color(0xFF00C569),
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Color(0xFFF5F5F5)),
    );
  }

  Widget itemCategories(BuildContext context, String title, Function action) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: CircleBorder(),
            child: IconButton(
              onPressed: () => action,
              icon: Icon(Icons.shop),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget itemBestSelling(BuildContext context, String image, String title,
      String subTitle, String price, Function action) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 350,
      child: InkWell(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 8),
                child: Image.network(
                  image,
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  '$title',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  '$subTitle',
                  style: TextStyle(
                      color: Color(0xFF929292),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  'Rp $price',
                  style: TextStyle(
                      color: Color(0xFF00C569),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        onTap: () => action,
      ),
    );
  }
}
