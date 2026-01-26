import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/spacing.dart';
import '../data/global_data.dart';
import '../data/places_data.dart';
import '../extension/nav.dart';
import '../models/place_model.dart';
import 'details_screen.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  void initState() {
    super.initState();

    placesList.clear();
    for (var item in placesData) {
      placesList.add(PlaceModel.fromJson(item));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('السياحة في السعودية'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: GridView.builder(
          itemCount: placesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final place = placesList[index];

            return InkWell(
              onTap: () {
                context.push(DetailsScreen(model: place));
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      place.image ??
                          'https://mfa.gov.bz/wp-content/themes/consultix/images/no-image-found-360x250.png',
                      height: 120,
                      fit: BoxFit.cover,
                    ),

                    AppSpace.heightH8,

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        place.name ?? ' no name ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    AppSpace.heightH8,

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '  ${place.rating ?? 0}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
