import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:interview3/Model/model.dart';

class StudentProvider with ChangeNotifier{


  List<StudentModel>? studentModel = [];

  Future<void> getSchoolData() async {
    final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    List data = json.decode(response);
    print(data);
    data.forEach((element){
      studentModel?.add(StudentModel.fromJson(element));
    });

    notifyListeners();
    print(studentModel![0].schoolName);
  }
}