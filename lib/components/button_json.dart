import 'package:flutter/material.dart';
import '../models/component.dart';
import '../services/python_service.dart';

class ButtonComponent extends StatelessWidget {
  final Component component;

  const ButtonComponent({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      onPressed: () {
        if (component.action?['type'] == 'navigate') {
          String targetScreenId = component.action!['target'];
          Navigator.pushNamed(context, '/$targetScreenId');
        } else if (component.action?['type'] == 'python') {
          runPythonFunction(component.action!['function'],component.action!['arg1']);
        }
      },
      child: Text(component.content['label']),
    );
  }
}