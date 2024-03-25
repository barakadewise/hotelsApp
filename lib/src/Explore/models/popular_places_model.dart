class PopularPlacesModel {
  final String imageName;
  final double rate;
  PopularPlacesModel({required this.imageName, required this.rate});
}

final List<PopularPlacesModel> popularPlacelist = [
  PopularPlacesModel(imageName: 'pp6.jpg', rate: 6.9),
  PopularPlacesModel(imageName: 'pp3.jpg', rate: 5.9),
  PopularPlacesModel(imageName: 'pp4.jpg', rate: 8.5),
  PopularPlacesModel(imageName: 'pp5.jpg', rate: 7.3),
  PopularPlacesModel(imageName: 'place1.jpg', rate: 6.9)
];
