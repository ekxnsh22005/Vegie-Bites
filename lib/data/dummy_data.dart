import '../models/restaurant.dart';
import '../models/food_item.dart';

List<Restaurant> DUMMY_RESTAURANTS = [
  Restaurant(
    id: 'r1',
    name: 'Swad Vegetarian',
    imageUrl: 'https://via.placeholder.com/150',
    address: '42 MG Road, Bangalore',
    rating: 4.5,
    cuisine: ['North Indian', 'Punjabi'],
    deliveryTime: 30,
    deliveryFee: 49.0,
    distance: 2,
  ),
  Restaurant(
    id: 'r2',
    name: 'Dosa Paradise',
    imageUrl: 'https://via.placeholder.com/150',
    address: '120 Indiranagar, Bangalore',
    rating: 4.7,
    cuisine: ['South Indian', 'Dosa'],
    deliveryTime: 25,
    deliveryFee: 39.0,
    distance: 1,
  ),
  Restaurant(
    id: 'r3',
    name: 'Pani Puri Junction',
    imageUrl: 'https://via.placeholder.com/150',
    address: '56 Koramangala, Bangalore',
    rating: 4.3,
    cuisine: ['Chaat', 'Street Food'],
    deliveryTime: 20,
    deliveryFee: 29.0,
    distance: 3,
  ),
  Restaurant(
    id: 'r4',
    name: 'Paneer Hub',
    imageUrl: 'https://via.placeholder.com/150',
    address: '89 HSR Layout, Bangalore',
    rating: 4.6,
    cuisine: ['North Indian', 'Paneer Special'],
    deliveryTime: 35,
    deliveryFee: 59.0,
    distance: 4,
  ),
];

List<FoodItem> DUMMY_FOOD_ITEMS = [
  // Swad Vegetarian
  FoodItem(
    id: 'f1',
    title: 'Paneer Butter Masala',
    description: 'Rich and creamy paneer curry cooked in tomato gravy with spices',
    price: 249.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r1',
    ingredients: ['Paneer', 'Tomato', 'Butter', 'Cream', 'Spices', 'Cashew Paste'],
    prepTime: 20,
  ),
  FoodItem(
    id: 'f2',
    title: 'Dal Makhani',
    description: 'Creamy black lentils cooked overnight with butter and spices',
    price: 199.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r1',
    ingredients: ['Black Lentils', 'Kidney Beans', 'Butter', 'Cream', 'Spices'],
    prepTime: 25,
  ),
  
  // Dosa Paradise
  FoodItem(
    id: 'f3',
    title: 'Masala Dosa',
    description: 'Crispy rice crepe filled with spiced potato filling, served with sambar and chutney',
    price: 129.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r2',
    ingredients: ['Rice Batter', 'Potato', 'Onion', 'Mustard Seeds', 'Curry Leaves'],
    prepTime: 15,
  ),
  FoodItem(
    id: 'f4',
    title: 'Mysore Masala Dosa',
    description: 'Dosa spread with spicy red chutney and filled with potato masala',
    price: 149.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r2',
    ingredients: ['Rice Batter', 'Potato', 'Red Chutney', 'Spices', 'Ghee'],
    prepTime: 15,
  ),
  
  // Pani Puri Junction
  FoodItem(
    id: 'f5',
    title: 'Pani Puri (6 pcs)',
    description: 'Crispy hollow puris filled with spicy and tangy mint water, potato and chickpeas',
    price: 79.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r3',
    ingredients: ['Puri', 'Mint Water', 'Potato', 'Chickpeas', 'Spices', 'Tamarind'],
    prepTime: 10,
  ),
  FoodItem(
    id: 'f6',
    title: 'Bhel Puri',
    description: 'Crunchy puffed rice mixed with vegetables, tangy and spicy chutneys',
    price: 89.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r3',
    ingredients: ['Puffed Rice', 'Sev', 'Onion', 'Tomato', 'Chutney', 'Coriander'],
    prepTime: 10,
  ),
  
  // Paneer Hub
  FoodItem(
    id: 'f7',
    title: 'Kadai Paneer',
    description: 'Paneer cooked with bell peppers in a spicy kadai masala',
    price: 259.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r4',
    ingredients: ['Paneer', 'Bell Peppers', 'Tomato', 'Kadai Masala', 'Coriander'],
    prepTime: 20,
  ),
  FoodItem(
    id: 'f8',
    title: 'Shahi Paneer',
    description: 'Royal paneer curry cooked in a rich and creamy sauce with cashews',
    price: 279.0,
    imageUrl: 'https://via.placeholder.com/150',
    restaurantId: 'r4',
    ingredients: ['Paneer', 'Cashew Paste', 'Cream', 'Spices', 'Butter'],
    prepTime: 25,
  ),
];