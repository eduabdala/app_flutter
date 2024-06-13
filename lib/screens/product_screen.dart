import 'package:flutter/material.dart';
import '../models/screen.dart';
import 'dynamic_screen.dart';

class ProductScreen extends StatelessWidget {
  final List<ScreenModel> screens;

  ProductScreen({required this.screens});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: ListView(
        children: [
          ...screens.map((screen) {
            return ListTile(
              title: Text(screen.title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DynamicScreen(screen: screen),
                  ),
                );
              },
            );
          }).toList(),
          ListTile(
            title: Text('Tela 4'),
            onTap: () {
              Navigator.pushNamed(context, '/tela4');
            },
          ),
        ],
      ),
    );
  }
}