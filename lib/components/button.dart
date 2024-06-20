import 'package:flutter/material.dart';
import '../models/component.dart';
import '../services/python_service.dart';

class ButtonComponent extends StatelessWidget {
  final Component? component;
  final String? label;
  final String? navigateTarget;
  final String? pythonFunction;
  final String? arg1;

  const ButtonComponent({
    super.key,
    this.component,
    this.label,
    this.navigateTarget,
    this.pythonFunction,
    this.arg1
  });

  @override
  Widget build(BuildContext context) {
    String buttonLabel;
    void Function()? onPressed;

    // Verifique se o componente foi fornecido
    if (component != null) {
      buttonLabel = component!.content['label'];
      if (component!.action?['type'] == 'navigate') {
        String targetScreenId = component!.action!['target'];
        onPressed = () => Navigator.pushNamed(context, '/$targetScreenId');
      } else if (component!.action?['type'] == 'python') {
        onPressed = () => runPythonFunction(component!.action!['function'],component!.action!['arg1']);
      }
    } else {
      // Use os parâmetros fornecidos diretamente
      buttonLabel = label!;
      if (navigateTarget != null) {
        onPressed = () => Navigator.pushNamed(context, '/$navigateTarget');
      } else if (pythonFunction != null) {
        onPressed = () => runPythonFunction(pythonFunction!,arg1!);
      }
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(buttonLabel),
    );
  }
}
