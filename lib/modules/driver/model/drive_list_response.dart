import 'package:meta/meta.dart';
import 'dart:convert';

DriverListResponse driverListResponseFromJson(String str) => DriverListResponse.fromJson(json.decode(str));

String driverListResponseToJson(DriverListResponse data) => json.encode(data.toJson());

class DriverListResponse {
  DriverListResponse({
    @required this.status,
    @required this.driverList,
  });

  bool? status;
  List<Driver>? driverList;

  factory DriverListResponse.fromJson(Map<String, dynamic> json) => DriverListResponse(
    status: json["status"] == null ? null : json["status"],
    driverList: json["driver_list"] == null ? null : List<Driver>.from(json["driver_list"].map((x) => Driver.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "driver_list": driverList == null ? null : List<dynamic>.from(driverList!.map((x) => x.toJson())),
  };
}

class Driver {
  Driver({
    @required this.id,
    @required this.name,
    @required this.mobile,
    @required this.licenseNo,
  });

  int? id;
  String? name;
  String? mobile;
  String? licenseNo;

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    licenseNo: json["license_no"] == null ? null : json["license_no"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "mobile": mobile == null ? null : mobile,
    "license_no": licenseNo == null ? null : licenseNo,
  };
}
