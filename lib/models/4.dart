class Four {
  int id;
  String flightName;
  List<Passenger> passenger;

  Four({this.id, this.flightName, this.passenger});

  factory Four.fromJson(Map<String, dynamic> json) {
    var listFromJson = json['passengers'] as List;
    List<Passenger> passengerList =
        listFromJson.map((passenger) => Passenger.fromJson(passenger)).toList();
    return Four(
        id: json['id'],
        flightName: json['flight_name'],
        passenger: passengerList);
  }
}

class Passenger {
  int passId;
  int checkedBags;

  Passenger({this.passId, this.checkedBags});

  factory Passenger.fromJson(Map<String, dynamic> json) {
    return Passenger(
      passId: json['id'],
      checkedBags: json['checked_bag'],
    );
  }
}
