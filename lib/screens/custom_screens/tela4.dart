import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../components/text.dart';
import '../../models/component.dart';

class Tela4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Component> components = [
      Component(
        type: 'text',
        content: {'text': 'Bem-vindo à Tela 4'},
        style: {'fontSize': 24, 'color': '#FF5733'}
      ),
      Component(
        type: 'button',
        content: {'label': 'Ir para Tela 5'},
        action: {'type': 'navigate', 'target': 'tela5'}
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 4'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: components.map((component) {
            if (component.type == 'text') {
              return TextComponent(component: component);
            } else if (component.type == 'button') {
              return ButtonComponent(component: component);
            } else {
              return Container();
            }
          }).toList(),
        ),
      ),
    );
  }
}