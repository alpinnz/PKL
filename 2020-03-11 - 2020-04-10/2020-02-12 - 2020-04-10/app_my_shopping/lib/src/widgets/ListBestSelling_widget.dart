import 'package:flutter/material.dart';

import 'itemProduct_widget.dart';

class ListBestSellingWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 280,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                      'Best Selling',
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
                    ),
                  ),
                ],
              ),
            );
  }
}