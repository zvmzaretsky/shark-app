import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final String name, description, imageUrl, fishId;
  final double price;

  const SearchCard({Key key, this.name, this.description, this.imageUrl, this.fishId, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return new Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ListTile(
        leading: Image.network(imageUrl, fit:BoxFit.fitHeight),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text("\$"+price.toString())
          ],
        ),
        subtitle: Text(description),
      ),
    );
  }
}
