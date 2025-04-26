import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/food_item.dart';
import '../data/dummy_data.dart';

class RestaurantDetailScreen extends StatelessWidget {
  static const routeName = '/restaurant-detail';

  @override
  Widget build(BuildContext context) {
    final restaurantId = ModalRoute.of(context)?.settings.arguments as String;
    final restaurant = DUMMY_RESTAURANTS.firstWhere((rest) => rest.id == restaurantId);
    final restaurantFoodItems = DUMMY_FOOD_ITEMS.where((food) => food.restaurantId == restaurantId).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(restaurant.name),
              background: Image.network(
                restaurant.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          restaurant.cuisine.join(', '),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              restaurant.rating.toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.grey[600],
                        ),
                        SizedBox(width: 4),
                        Text(
                          '${restaurant.deliveryTime} mins',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(width: 16),
                        Icon(
                          Icons.motorcycle,
                          size: 16,
                          color: Colors.grey[600],
                        ),
                        SizedBox(width: 4),
                        Text(
                          '₹${restaurant.deliveryFee.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(width: 16),
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Colors.grey[600],
                        ),
                        SizedBox(width: 4),
                        Text(
                          '${restaurant.distance} km',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 32),
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ...restaurantFoodItems.map((foodItem) {
                return FoodItemWidget(
                  id: foodItem.id,
                  title: foodItem.title,
                  description: foodItem.description,
                  price: foodItem.price,
                  imageUrl: foodItem.imageUrl,
                );
              }).toList(),
              SizedBox(height: 80), // Add extra space at the bottom
            ]),
          ),
        ],
      ),
    );
  }
}