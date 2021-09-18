import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class InfoScreen extends StatefulWidget {
  final String shopName;
  final String distance;

  InfoScreen({required this.shopName, required this.distance});

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("お店情報"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "建物名",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 35,),
            Text(
              "??階",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
