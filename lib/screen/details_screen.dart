import 'package:flutter/material.dart';
import '../models/place_model.dart';




class DetailsScreen extends StatelessWidget {
  final PlaceModel  model;
  const DetailsScreen({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(14),
      child: Column(
        children: [
          Image.network(model.image ?? "https://mfa.gov.bz/wp-content/themes/consultix/images/no-image-found-360x250.png"),//صوره فاضيه 
          Text(model.name ?? "no name"),
          Text(model.rating.toString()),
        ],
      ),),
    );
  }
}