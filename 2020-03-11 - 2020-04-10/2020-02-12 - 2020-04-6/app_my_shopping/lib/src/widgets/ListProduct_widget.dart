import 'package:flutter/material.dart';

import 'itemProduct_widget.dart';

class ListProductWidget extends StatelessWidget {
  final String _titleCategory;

  ListProductWidget(this._titleCategory);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Text(
              '$_titleCategory',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView.count(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            childAspectRatio: 0.7,
            crossAxisCount: 2,
            children: <Widget>[
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
                  'https://www.jakartanotebook.com/images/products/42/63/30156/201/headset-stereo-wired-wireless-bluetooth-black-or-green-1.jpg',
                  'Title',
                  'subTitle',
                  'Price'),
              ItemProductWidget(
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
