import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle.g.dart';

@JsonSerializable(explicitToJson: true)
class Vehicle {
  String vehicleId;
  ServicingInfo? servicingInfo;
  String? currentOwner;
  List<String> owners;

  Vehicle(this.vehicleId, this.servicingInfo, this.currentOwner, this.owners);

  factory Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);
  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServicingInfo {
  List<ServiceHistory> serviceHistories;

  ServicingInfo(this.serviceHistories);

  factory ServicingInfo.fromJson(Map<String, dynamic> json) => _$ServicingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ServicingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServiceHistory {
  String serviceCenter;
  int timeStamp;

  ServiceHistory(this.serviceCenter, this.timeStamp);

  String getDateFromTimeStamp() {
    var dt = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    return DateFormat('MM/dd/yyyy, hh:mm a').format(dt).toString();
  }

  factory ServiceHistory.fromJson(Map<String, dynamic> json) => _$ServiceHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceHistoryToJson(this);
}