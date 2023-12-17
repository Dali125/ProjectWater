import 'package:flutter/material.dart';
import 'package:untitled4/ui/views/product_info/page.dart';


class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  
  String url = 'https://content.oppictures.com/Master_Images/Master_Variants/Variant_1500/273967.JPG';
  @override
  Widget build(BuildContext context) {

    Color TextColor = Theme.of(context).colorScheme.onSurfaceVariant;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return InkWell(
      splashColor: Theme.of(context).colorScheme.onSurfaceVariant,
      child: Card(
        elevation: 10,
        shadowColor: Theme.of(context).colorScheme.surface,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10)),
              child: SizedBox(


                height: height/2,
                width: width/2.21,
                child: Image.network(url, fit: BoxFit.fill,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Text('Item',style: TextStyle(color: TextColor, fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Text("K 40",style: TextStyle(color: TextColor, fontWeight: FontWeight.w700)),
            )
          ],
        ),

      ),
      onTap: (){
        viewProduct(url);
      },
    );
  }

  void viewProduct(String imageUrl) {

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductInfo(imageUrl: imageUrl)));

  }
}
