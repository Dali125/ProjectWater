import 'package:flutter/material.dart';
import 'package:untitled4/ui/components/item_card.dart';

class ProductsGrid extends StatefulWidget {
  final height;
  const ProductsGrid({Key? key, this.height}) : super(key: key);

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 700,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(children: [ItemCard(),ItemCard()],),
          Row(children: [ItemCard(),ItemCard()],),

        ],
      ),
    );
  }
}
