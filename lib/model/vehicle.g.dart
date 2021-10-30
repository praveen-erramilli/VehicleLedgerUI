// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      json['vehicleId'] as String,
      json['servicingInfo'] == null
          ? null
          : ServicingInfo.fromJson(
              json['servicingInfo'] as Map<String, dynamic>),
      json['currentOwner'] as String?,
      (json['owners'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'vehicleId': instance.vehicleId,
      'servicingInfo': instance.servicingInfo?.toJson(),
      'currentOwner': instance.currentOwner,
      'owners': instance.owners,
    };

ServicingInfo _$ServicingInfoFromJson(Map<String, dynamic> json) =>
    ServicingInfo(
      (json['serviceHistories'] as List<dynamic>)
          .map((e) => ServiceHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServicingInfoToJson(ServicingInfo instance) =>
    <String, dynamic>{
      'serviceHistories':
          instance.serviceHistories.map((e) => e.toJson()).toList(),
    };

ServiceHistory _$ServiceHistoryFromJson(Map<String, dynamic> json) =>
    ServiceHistory(
      json['serviceCenter'] as String,
      json['timeStamp'] as int,
    );

Map<String, dynamic> _$ServiceHistoryToJson(ServiceHistory instance) =>
    <String, dynamic>{
      'serviceCenter': instance.serviceCenter,
      'timeStamp': instance.timeStamp,
    };
