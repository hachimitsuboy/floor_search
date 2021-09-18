import 'package:floor_search/view/screens/info_screen.dart';
import 'package:flutter/material.dart';

class CustomSendButton extends StatefulWidget {
  final String shopName;
  final String distance;

  CustomSendButton({
    required this.shopName,
    required this.distance,
  });

  @override
  _CustomSendButtonState createState() => _CustomSendButtonState();
}

class _CustomSendButtonState extends State<CustomSendButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        //TODO 送信ボタン
        onPressed: () {
          print("shopName: ${widget.shopName}/ distance : ${widget.distance}");
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => InfoScreen(
                  shopName: widget.shopName,
                  distance: widget.distance,
                )),
          );
        },
        child: Text(
          "検索",
          style: TextStyle(fontSize: 18.0),
        ),
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white70,
          primary: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
