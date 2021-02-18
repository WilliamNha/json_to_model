import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:json_to_models/models/1.dart';
import 'package:json_to_models/models/3.dart';
import 'package:flutter/services.dart';
import 'package:json_to_models/models/2.dart';
import 'package:json_to_models/models/4.dart';
import 'package:json_to_models/models/5.dart';
import 'package:json_to_models/models/myjson.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JSON',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//first part
Future<String> _loadData() async {
  return await rootBundle.loadString('assets/myjson.json');
}

class _HomeState extends State<Home> {
  //second part
//  Future loadData() async {
//    String jsonString = await _loadData();
//    final jsonResponse = json.decode(jsonString);
//    One one = One.fromJson(jsonResponse);
//    print('${one.id} - ${one.name} - ${one.gender}');
//    id = one.id;
//    name = one.name;
//    gender = one.gender;
//  }

//  Future loadData() async {
//    String jsonString = await _loadData();
//    final jsonResponse = json.decode(jsonString);
//    Two two = Two.fromJson(jsonResponse);
//    print('${two.name} - ${two.classes[0]} - ${two.classes[1]}');
//  }

//  Future loadData() async {
//    String jsonString = await _loadData();
//    final jsonResponse = json.decode(jsonString);
//    Three three = Three.fromJson(jsonResponse);
//    print(
//        '${three.id} - ${three.name} - ${three.property.width} - ${three.property.height}');
//  }

//  Future loadData() async {
//    String jsonString = await _loadData();
//    final jsonResponse = json.decode(jsonString);
//    Four four = Four.fromJson(jsonResponse);
//    print(
//        '${four.id} - ${four.flightName} - ${four.passenger[0].passId} - ${four.passenger[0].checkedBags}');
//  }

//  Future loadData() async {
//    String jsonString = await _loadData();
//    final jsonResponse = json.decode(jsonString);
//    Five five = Five.fromJson(jsonResponse);
//    print(
//        '${five.classes[0].id} - ${five.classes[0].className} - ${five.classes[0].level}');
//  }

  Future loadData() async {
    String jsonString = await _loadData();
    final jsonResponse = json.decode(jsonString);
    MyModel myModel = MyModel.fromJson(jsonResponse);
    print('${myModel.date}');
    print('${myModel.result[1].resultTwo.two}');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Example'),
      ),
      body: Container(
        child: Center(
          child: Text('JSON Example'),
        ),
      ),
    );
  }
}
