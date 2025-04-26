import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/restaurant_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/order_confirmation_screen.dart';
import 'models/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Cart(),
      child: MaterialApp(
        title: 'VegBites',
        theme: ThemeData(
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.light(secondary: Colors.lightGreen),
          fontFamily: 'Poppins',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          RestaurantDetailScreen.routeName: (ctx) => RestaurantDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          CheckoutScreen.routeName: (ctx) => CheckoutScreen(),
          OrderConfirmationScreen.routeName: (ctx) => OrderConfirmationScreen(),
        },
      ),
    );
  }
}