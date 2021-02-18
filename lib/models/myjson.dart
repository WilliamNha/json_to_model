class MyModel {
  String date;
  List<Result> result;

  MyModel({this.date, this.result});

  factory MyModel.fromJson(Map<String, dynamic> json) {
    var resultFromJson = json['Result'] as List;
    List<Result> myResult =
        resultFromJson.map((result) => Result.fromJson(result)).toList();
    return MyModel(date: json['Date'], result: myResult);
  }
}

class Result {
  ResultOne resultOne;
  ResultTwo resultTwo;

  Result({this.resultOne, this.resultTwo});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
        resultOne: ResultOne.fromJson(json['ResultOne']),
        resultTwo: ResultTwo.fromJson(json['ResultTwo']));
  }
}

class ResultOne {
  String two;
  String three;

  ResultOne({this.two, this.three});

  factory ResultOne.fromJson(Map<String, dynamic> json) {
    return ResultOne(two: json['two'], three: json['three']);
  }
}

class ResultTwo {
  String two;
  String three;

  ResultTwo({this.two, this.three});

  factory ResultTwo.fromJson(Map<String, dynamic> json) {
    return ResultTwo(two: json['two'], three: json['three']);
  }
}
