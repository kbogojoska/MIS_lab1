import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> item;

  DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        ),
        backgroundColor: Colors.purple.shade50,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        color: Colors.purple.shade50,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(maxWidth: 400),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(item['imageUrl']),
                  SizedBox(height: 16),
                  Text(
                    item['name'],
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item['description'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Цена: ${item['price']} ден.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
