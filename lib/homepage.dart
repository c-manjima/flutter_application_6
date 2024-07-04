import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Ratings & Reviews'),
        ),
        body: RatingsReviews(),
      ),
    );
  }
}

class RatingsReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Ratings & Reviews',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                '3.8',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('338 Ratings, 107 Reviews'),
                  SizedBox(height: 8),
                  RatingBar(
                    label: 'Excellent',
                    value: 134,
                    color: Colors.green,
                  ),
                  RatingBar(
                    label: 'Very Good',
                    value: 100,
                    color: Colors.greenAccent,
                  ),
                  RatingBar(
                    label: 'Good',
                    value: 48,
                    color: Colors.amber,
                  ),
                  RatingBar(
                    label: 'Average',
                    value: 12,
                    color: Colors.orange,
                  ),
                  RatingBar(
                    label: 'Poor',
                    value: 44,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  RatingBar({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(label),
          SizedBox(width: 8),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 8,
                  color: Colors.grey[300],
                ),
                Container(
                  height: 8,
                  width: value.toDouble(),
                  color: color,
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          Text(value.toString()),
        ],
      ),
    );
  }
}
