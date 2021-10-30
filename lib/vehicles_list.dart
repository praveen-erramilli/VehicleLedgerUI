import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vehicle_ledger/appbar.dart';
import 'package:http/http.dart' as http;
import 'package:vehicle_ledger/model/vehicle.dart';
import 'package:vehicle_ledger/vehicle_details.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar().build(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: FutureBuilder<List<Vehicle>>(
              future: getAll(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Vehicle>? vehicles = snapshot.data;
                  return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              // maxCrossAxisExtent: 200,
                              // childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              ),
                      itemCount: vehicles?.length ?? 0,
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: GestureDetector(
                              onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VehicleDetails(
                                                    vehicle: vehicles
                                                        ?.elementAt(index))))
                                  },
                              child: Image.asset(getImage(index))),
                        );
                      });
                } else {
                  return const CircularProgressIndicator();
                }
              }),
        ));
  }

  Future<List<Vehicle>> getAll() async {
    // http.Response response =
    //     await http.get(Uri.parse('http://localhost:9090/vehicle'));
    // if (response.statusCode == 200) {
    //   List<dynamic> json = jsonDecode(response.body);
    //   List<Vehicle> vehicles = json.map((e) => Vehicle.fromJson(e)).toList();
    //   return vehicles;
    // } else {
    //   throw Exception('Failed to load vehicles list');
    // }

    List<dynamic> json = jsonDecode(
        '[{"vehicleId":"123","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}},{"vehicleId":"456","currentOwner":"Praveen","owners":["Praveen","Sabyasachi"],"servicingInfo":{"serviceHistories":[{"serviceCenter":"Mosolf","timeStamp":1635593364992}]}}]');
    List<Vehicle> vehicles = json.map((e) => Vehicle.fromJson(e)).toList();
    return vehicles;
  }
  String getImage(int index) {
    return "images/" + ((index%8)+1).toString() + ".png";
  }
}
