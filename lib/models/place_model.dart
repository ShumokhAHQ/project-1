class PlaceModel {
  final String? name;
  final String? image;
  final double? rating;


  PlaceModel({
    this.name,
    this.image,
    this.rating,
  });


   factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      name: json['name'],
      image: json['image'],
      rating: (json['rating'] as num?)?.toDouble(),
    );
  }
}
