class FoodItem {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String restaurantId;
  final List<String> ingredients;
  final int prepTime; // in minutes
  
  FoodItem({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.restaurantId,
    required this.ingredients,
    required this.prepTime,
  });
}