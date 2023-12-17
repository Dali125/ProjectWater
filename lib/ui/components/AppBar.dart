import 'package:flutter/material.dart';


class MyAppBar extends StatefulWidget {

  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: (){

        },
      ),
      title: Text(widget.title, style: const TextStyle(

        fontSize: 20
      ),),
    );
  }
}

