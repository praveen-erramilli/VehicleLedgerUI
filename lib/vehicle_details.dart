import 'package:flutter/material.dart';
import 'package:vehicle_ledger/appbar.dart';

import 'model/vehicle.dart';

class VehicleDetails extends StatelessWidget {
  final Vehicle? vehicle;

  const VehicleDetails({Key? key, this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().build(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/details1.png'),
            Image.asset('images/details2.png'),
            const Center(
              child: Text('Blockchain data',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 3, 46, 92),
                  )),
            ),
            const SizedBox(
                width: 100,
                child: Divider(
                  color: Color.fromARGB(255, 243, 113, 33),
                  thickness: 2,
                )),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              'Vehicle ID : ${vehicle!.vehicleId}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Current Owner : ${vehicle!.currentOwner ?? ''}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text(
              'Owners History',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            for (var value in vehicle?.owners?? [])
              Text(value),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            DataTable(columns: const <DataColumn>[
              DataColumn(
                  label: Text(
                'Service Center',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                'Date',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ], rows: <DataRow>[
              for (var value in vehicle?.servicingInfo?.serviceHistories??[])
                DataRow(cells: [
                  DataCell(Text(value.serviceCenter)),
                  DataCell(Text(value.getDateFromTimeStamp())),
                ])
            ]),
            Image.asset('images/details3.png'),
          ],
        ),
      ),
    );
  }
}
