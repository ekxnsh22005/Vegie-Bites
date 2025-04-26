class Restaurant {
  final String id;
  final String name;
  final String imageUrl;
  final String address;
  final double rating;
  final List<String> cuisine;
  final int deliveryTime; // in minutes
  final double deliveryFee;
  final int distance; // in km
  
  Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.rating,
    required this.cuisine,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.distance,
  });
}