import 'package:flutter/material.dart';
import '../models/component.dart';
import '../services/python_service.dart';

class ButtonComponent extends StatelessWidget {
  final Component component;

  ButtonComponent({required this.component});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (component.action?['type'] == 'navigate') {
          String targetScreenId = component.action!['target'];
          Navigator.pushNamed(context, '/$targetScreenId');
        } else if (component.action?['type'] == 'python') {
          runPythonFunction(component.action!['function']);
        }
      },
      child: Text(component.content['label']),
    );
  }
}