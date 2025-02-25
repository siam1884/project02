import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, String> donor;

  DetailsPage({required this.donor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Donor Details')),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${donor['name']}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Blood Type: ${donor['bloodType']}',
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Mobile: ${donor['mobile']}',
                  style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.red.shade50,
    );
  }
}
