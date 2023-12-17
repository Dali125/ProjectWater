import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {

  final String TextIn;
  final Widget content;
  final double height;
  final Color? backgroundColor;


  const HomeComponent({Key? key, required this.TextIn, required this.content, required this.height, required this.backgroundColor}) : super(key: key);

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: widget.backgroundColor,
        width: width,
        height: widget.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.TextIn
                    , style: TextStyle(fontSize: width > 500 ? 30 : 25,
                      fontWeight: FontWeight.bold),),
                  GestureDetector(child: Text('View All') , onTap: (){

                  },)
                ],
              ),
            ),

            widget.content

          ],
        ),


      ),
    );
  }
}
