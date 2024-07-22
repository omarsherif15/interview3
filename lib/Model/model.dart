class StudentModel {
  String? schoolName;
  String? schoolAddress;
  String? studentCount;
  String? teachersCount;

  StudentModel({
    required this.schoolName,
    required this.schoolAddress,
    required this.studentCount,
    required this.teachersCount,
  });

  StudentModel.fromJson(Map<String, dynamic> json) {
    schoolName = json['School Name'];
    schoolAddress = json['School Address'];
    studentCount = json['Number of Students'];
    teachersCount = json['Number of Teachers'];
  }

}