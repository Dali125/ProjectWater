import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  final String imageUrl;
  const ProductInfo({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          stretch: true,

          bottom: PreferredSize(preferredSize: Size(width, 300),
              child: Image.network(widget.imageUrl,
                fit: BoxFit.cover,
                height: 300,)),

        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Container(
              width: width,
              height: 500,
            ),
          ),
        )
      ],
    );
  }
}
