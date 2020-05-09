import 'package:flutter/material.dart';

List<String> imgList = [
  'http://bit.shikshamandal.org/wp-content/uploads/2018/05/dsc_7393.jpg',
  'http://bit.shikshamandal.org/wp-content/uploads/2018/05/image_7.jpg',
  'http://bit.shikshamandal.org/wp-content/uploads/2018/05/img_20180328_wa0001.jpg',
  'http://bit.shikshamandal.org/wp-content/uploads/2018/05/DSC_2630-2.jpg',
  'http://bit.shikshamandal.org/wp-content/uploads/2019/10/2.jpg',
  'http://bit.shikshamandal.org/wp-content/uploads/2018/06/Webp.net-compress-image-1.jpg',
  'http://bit.shikshamandal.org/wp-content/uploads/2018/05/dsc_7393.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          width: 400,
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover,),
                    ],
                  )),
            ),
          ),
        ))
    .toList();
