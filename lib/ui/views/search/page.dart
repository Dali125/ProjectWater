import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(


        slivers: [

          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.onPrimary,
            ),

            collapsedHeight: kToolbarHeight,
            expandedHeight: kToolbarHeight + 50,
            flexibleSpace: const Padding(
              padding: EdgeInsets.all(60.0),
              child: TextField(


              ),
            ),

          ),

          SliverToBoxAdapter(

          )
        ],
      ),

    );
  }
}
