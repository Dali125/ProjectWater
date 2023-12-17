import 'package:flutter/material.dart';
import 'package:untitled4/ui/views/home/page.dart';

import 'color_schemes.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(

          colorScheme: darkColorScheme,
          useMaterial3: true
      ),
      home: HomePage(),
    );
  }
}