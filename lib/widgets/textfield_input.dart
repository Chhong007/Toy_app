import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String labale;
  final bool isPass;
  final IconData icon;
  const TextFieldInput({
    super.key, 
    required this.textEditingController, 
    required this.hintText, 
    required this.labale, 
    required this.isPass, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          label: Text(labale),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
