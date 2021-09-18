import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final ValueChanged onChanged;

  CustomDropDownButton({required this.onChanged});

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  List<DropdownMenuItem<String>> _distanceMenu = [];
  String _menuValue = "1";
  String _selectValue = "";

  @override
  void initState() {
    _setMenu();
    super.initState();
  }

  void _setMenu() {
    _distanceMenu
      ..add(
        DropdownMenuItem(
          child: Text("1"),
          value: "1",
        ),
      )
      ..add(
        DropdownMenuItem(
          child: Text("2"),
          value: "2",
        ),
      )
      ..add(
        DropdownMenuItem(
          child: Text("3"),
          value: "3",
        ),
      )
      ..add(
        DropdownMenuItem(
          child: Text("5"),
          value: "5",
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _distanceMenu,
      value: _menuValue,
      onChanged: (value) {
        widget.onChanged(value);
        setState(() {
          _menuValue = value.toString();
        });
      },
    );
  }
}
