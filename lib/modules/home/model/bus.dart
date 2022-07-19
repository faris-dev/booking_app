// To parse this JSON data, do
//
//     final busListResponse = busListResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

BusListResponse busListResponseFromJson(String str) => BusListResponse.fromJson(json.decode(str));

String busListResponseToJson(BusListResponse data) => json.encode(data.toJson());

class BusListResponse {
  BusListResponse({
    required this.status,
    required this.busList,
  });

  bool status;
  List<Bus>? busList;

  factory BusListResponse.fromJson(Map<String, dynamic> json) => BusListResponse(
    status: json["status"] == null ? null : json["status"],
    busList: json["bus_list"] == null ? null : List<Bus>.from(json["bus_list"].map((x) => Bus.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "bus_list": busList == null ? null : List<dynamic>.from(busList!.map((x) => x.toJson())),
  };
}

class Bus {
  Bus({
    required this.id,
    required this.name,
    required this.image,
    required this.seatCount,
    required this.type,
    required this.driver,
  });

  int id;
  String name;
  String image;
  String seatCount;
  String type;
  int driver;

  factory Bus.fromJson(Map<String, dynamic> json) => Bus(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"],
    seatCount: json["seat_count"] == null ? null : json["seat_count"],
    type: json["type"] == null ? null : json["type"],
    driver: json["driver"] == null ? null : json["driver"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
    "seat_count": seatCount == null ? null : seatCount,
    "type": type == null ? null : type,
    "driver": driver == null ? null : driver,
  };
}
