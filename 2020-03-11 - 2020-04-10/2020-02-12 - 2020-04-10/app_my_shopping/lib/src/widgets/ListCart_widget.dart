import 'package:app_my_shopping/src/widgets/itemCart_widget.dart';
import 'package:flutter/material.dart';

class ListCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemCartWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
            ],
          )
        ],
      ),
    );
  }
}
