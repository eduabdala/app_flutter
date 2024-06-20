// lib/screens/custom_screens/thermal_printer_escp.dart
import 'package:flutter/material.dart';
import '../../components/button.dart';

TextEditingController _controller = TextEditingController();
class ThermalPrinterESCP extends StatelessWidget {
  const ThermalPrinterESCP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thermal Printer ESCP'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                labelText: "text",
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ButtonComponent(label: 'cut',pythonFunction: 'cortar',arg1: 'null',),
                const SizedBox(height: 10,),
                ButtonComponent(label: 'print',pythonFunction: 'imprimir',arg1: _controller.text,)
                ],
            )
          ],
        ),
      ),
    );
  }
}
