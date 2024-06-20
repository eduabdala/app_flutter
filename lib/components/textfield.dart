import 'package:flutter/material.dart';
import '../models/component.dart';

class TextFieldComponent extends StatelessWidget {
  final Component? component;
  final String? label;
  final String? hint;

  TextFieldComponent({
    super.key,
    this.component,
    this.label,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    String textFieldLabel;
    String textFieldHint;
    void Function()? onChanged;

    if (component != null) {
      textFieldLabel = component!.content['label'];
      textFieldHint = component!.content['hint'];
      
    } else {
      textFieldLabel = label!;
      textFieldHint = hint!;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: textFieldLabel,
          hintText: textFieldHint,
        ),
        onChanged: (value) {
// Implementar alguma lógica conforme necessário
        },
      ),
    );
  }
}
