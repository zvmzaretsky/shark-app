import 'package:fish_app/utils/dummy.dart';
import 'package:fish_app/widgets/search_card.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: TextField(
              decoration: InputDecoration(
                enabled: true,
                hintText: "Salmon!",
                helperText: "Seach for your special fish!",
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: fishes.length,
              itemBuilder: ((_, index) {
                return SearchCard(
                  description: fishes[index]["fishDescription"],
                  fishId: fishes[index]["fishId"],
                  imageUrl: fishes[index]["imageUrl"],
                  name: fishes[index]["fishName"],
                  price: fishes[index]["price"],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}