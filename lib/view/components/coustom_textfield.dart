
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  final ValueChanged onSubmitted;

  CustomTextField({required this.onSubmitted});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  TextEditingController _textEditingController = TextEditingController();
  String shopName = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "店名",
        ),
        maxLines: 1,
        onSubmitted: (store){
          widget.onSubmitted(store);
          // shopName = _textEditingController.text;
        },
      ),
    );
  }
}
