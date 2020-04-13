import 'package:flutter/material.dart';

class ItemProductWidget extends StatelessWidget {
  final String _image, _title, _subTitle, _price;

  ItemProductWidget(this._image, this._title, this._subTitle, this._price);

  @override
  Widget build(BuildContext context) {
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
                  '$_image',
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  '$_title',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  '$_subTitle',
                  style: TextStyle(
                      color: Color(0xFF929292),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  'Rp $_price',
                  style: TextStyle(
                      color: Color(0xFF00C569),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        onTap: () => {},
      ),
    );
  }
}
