import 'package:flutter/material.dart';
import 'home_screen.dart';

class OrderConfirmationScreen extends StatelessWidget {
  static const routeName = '/order-confirmation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Order Placed Successfully!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your delicious vegetarian food is on the way',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Order #VB${DateTime.now().millisecondsSinceEpoch.toString().substring(6)}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Estimated Delivery: 35-45 minutes',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              child: Text('Back to Home'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}