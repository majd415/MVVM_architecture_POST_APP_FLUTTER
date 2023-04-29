import 'package:flutter/material.dart';

import '../view_model/home_view_model.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data=HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${data.getCount()}"),
          TextButton(onPressed: (){
         setState(() {
           data.setCount();
         });

          }, child: Icon(Icons.format_indent_increase))
        ],
      ),
    );
  }
}