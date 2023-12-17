
//Home Component in the flutter Ap

import 'package:flutter/material.dart';
import 'package:untitled4/ui/components/AppBar.dart';
import 'package:untitled4/ui/components/home_component.dart';
import 'package:untitled4/ui/components/image_carusel.dart';
import 'package:untitled4/ui/components/products_grid.dart';

import '../search/page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    String screenName = "Home";
    return Scaffold(

      appBar: AppBar(
        title: Text('E-market', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(onPressed: (){
            goToSearch();
          }, icon: Icon(Icons.search, color: Theme.of(context).colorScheme.onPrimary,))
        ],

      ),



      body: Container(
        height: height,
        width: width,
        color: Theme.of(context).colorScheme.surface,

        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(

            children: [
              HomeComponent(TextIn: "Trending Deals",
                  height: 260,
                  
                  content: const ImageCarusel(), backgroundColor: Theme.of(context).colorScheme.surface),
              HomeComponent(TextIn: "Latest Deals",  height: height, backgroundColor: null,content: ProductsGrid(height: height,),)
       



            ],
          ),
        )


      ),
    );
  }

  void goToSearch() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
  }
}
