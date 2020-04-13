import 'package:flutter/material.dart';

class ItemCartWidget extends StatelessWidget {
  final String _image, _title, _subTitle, _price;

  ItemCartWidget(this._image, this._title, this._subTitle, this._price);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2,bottom: 2,left: 4,right: 4),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 4, right: 8, top: 4, bottom: 4),
              child: Image.network(
                '$_image',
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 14),
                  child: Text(
                    '$_title',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 4),
                  child: Text(
                    'Rp $_price',
                    style: TextStyle(
                        color: Color(0xFF00C569),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color(0xFFDDDDDD),
                      borderRadius: BorderRadius.circular(2.0)
                    ),
                    margin: EdgeInsets.only(left: 10, right: 10, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Icon(Icons.add),
                        ),
                        Text('2'),
                        InkWell(
                          child: Icon(Icons.remove),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
