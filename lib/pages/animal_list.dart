import 'dart:convert';
import 'package:final_620710314/model/api.dart';
import 'package:final_620710314/pages/animal_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AnimalList extends StatefulWidget {
  const AnimalList({Key? key}) : super(key: key);

  @override
  State<AnimalList> createState() => _AnimalListState();
}

class _AnimalListState extends State<AnimalList> {

  @override
  void initState() {
    super.initState();
    _test();
  }
  Future <void> _test() async {
    Uri url = Uri.parse('https://cpsu-test-api.herokuapp.com/quizzes');
    var response = await http.get(url,headers:{'id':'620710314'});

    var json = jsonDecode(response.body);
    var apiResult = ApiResult.fromJson(json);
    if(json['status']=='ok'){
      print(response.body);
      print('Connect Suscess');
    }
    else{
      print('Fail');
    }
    setState(() {
      AnimalData.list = apiResult.data.map<AnimalData>((AnimalItem) => AnimalItem.fromJson(AnimalItem)).toList();
      print('Success');
    });
  }
  @override
  Widget build(BuildContext context){
    return Container(

    );
  }
}
