class PropertyDetail {
  final String image;
  final String title;
  final String description;

  PropertyDetail({this.image, this.title, this.description});
}

List<PropertyDetail> propertyDetails = [
  PropertyDetail(
      image: "assets/images/master_bedroom.jpg",
      title: "Master Bedroom",
      description: "Main big double bedroom with Landscape view"),
  PropertyDetail(
      image: "assets/images/hall.jpg",
      title: "Big Hall",
      description: "100*100 ft hall with italian marble flooring, Sofa"),
  PropertyDetail(
      image: "assets/images/kitchen.jpg",
      title: "Lavicent Kitchen",
      description: "Kitchen wiith all latest Equipment"),
];
