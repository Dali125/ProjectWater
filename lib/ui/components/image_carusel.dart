import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class ImageCarusel extends StatefulWidget {
  const ImageCarusel({Key? key}) : super(key: key);

  @override
  State<ImageCarusel> createState() => _ImageCaruselState();
}

class _ImageCaruselState extends State<ImageCarusel> {

  List<Widget> items = [

    Text('data'),
    Text('data'),
    Text('data'),
    Text('data'),
  ];

  List<int> values = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return
        CarouselSlider(items:
            values.map((e) {
              return Builder(builder: (context){
                return Container(

                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,

                  ),
                  child: Text(e.toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                );
              });
            }).toList(), options: CarouselOptions(
          height: width > 500 ? 400 : 200,
          aspectRatio: 16/9,
          initialPage: 0,
          enableInfiniteScroll: true,
            autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal
        ));
  }
}
