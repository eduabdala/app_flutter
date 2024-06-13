import 'package:flutter/material.dart';
import '../models/screen.dart';
import '../components/component_factory.dart';

class DynamicScreen extends StatelessWidget {
  final ScreenModel screen;

  DynamicScreen({required this.screen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screen.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: screen.components.map((component) => ComponentFactory.createComponent(component, context)).toList(),
        ),
      ),
    );
  }
}