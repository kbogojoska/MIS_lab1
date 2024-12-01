import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mis_lab1/screens/details_screen.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
          child: AppBar(
            centerTitle: true,
            title: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 50.0),
              decoration: BoxDecoration(
                color: Colors.purple.shade200,
                borderRadius: BorderRadius.circular(12),
                border: Border(bottom: BorderSide(color: Colors.purple.shade300, width: 2)),
              ),
              child: Text(
                '211140',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: ListView.builder(
            itemCount: listOfClothing.length,
            itemBuilder: (context, index) {
              final item = listOfClothing[index];
              return Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(12),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item['imageUrl'],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    item['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    '${item['price']} ден.',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                    size: 20,
                  ),
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
        ),
      ),
    );
  }
}
