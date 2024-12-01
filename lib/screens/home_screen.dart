import 'package:flutter/material.dart';
import 'details_screen.dart';

class StartingScreen extends StatelessWidget {
  final List<Map<String, dynamic>> listOfClothing = [
    {
      'name': 'Маица',
      'imageUrl': 'assets/tshirt.png',
      'description': 'Памучна маица со кратки ракави.',
      'price': 500,
    },
    {
      'name': 'Фармерки',
      'imageUrl': 'assets/jeans.png',
      'description': 'Класични фармерки, унисекс модел.',
      'price': 1500,
    },
    {
      'name': 'Јакна',
      'imageUrl': 'assets/jacket.png',
      'description': 'Топла зимска јакна.',
      'price': 3000,
    },
    {
      'name': 'Патики',
      'imageUrl': 'assets/shoes.png',
      'description': 'Спортски патики за секојдневна употреба.',
      'price': 2500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('211140'),
      ),
      body: ListView.builder(
        itemCount: listOfClothing.length,
        itemBuilder: (context, index) {
          final item = listOfClothing[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(item['imageUrl']),
              title: Text(item['name']),
              subtitle: Text('${item['price']} ден.'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(item: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
