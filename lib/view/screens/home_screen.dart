import 'package:floor_search/view/components/coustom_textfield.dart';
import 'package:floor_search/view/components/custom_drop_dwon_button.dart';
import 'package:floor_search/view/components/custom_send_button.dart';
import 'package:flutter/material.dart';

import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _shopName = "";
  String _distanceValue = "3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("お店を入力"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50.0),
          const Text("お店の名前を入力してください"),
          const SizedBox(height: 30),
          CustomTextField(
            onSubmitted: (value) => inputShopName(value, context),
          ),
          const SizedBox(height: 120.0),
          const Text("現在地からのおおよその距離（km）"),
          CustomDropDownButton(
            onChanged: (value) => selectValue(value, context),
          ),
          const SizedBox(
            height: 135,
          ),
          CustomSendButton(
            shopName: _shopName,
            distance: _distanceValue,
          ),
        ],
      ),
    );
  }

  // _toInfoScreen(BuildContext context) {
  //   //画面遷移時、店名、距離の値を持たせる。
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => InfoScreen(shopName: _textEditingController.text, distance:,)));
  // }

  //TODO コンポーネントで取得した値を、親クラスのHomeScreenのプロパティに代入する方法！！
  inputShopName(shopName, BuildContext context) {
    setState(() {
      _shopName = shopName;
    });


  }

  selectValue(value, BuildContext context) {
    setState(() {
      _distanceValue = value;
    });


  }


}
