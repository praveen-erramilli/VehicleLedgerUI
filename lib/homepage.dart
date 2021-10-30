import 'package:flutter/material.dart';
import 'package:vehicle_ledger/appbar.dart';
import 'package:vehicle_ledger/vehicles_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().build(),
      body: Stack(
        children: [
          Image.asset('images/banner-desktop.jpg'),
          Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Kauf dein Auto einfach online',
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 46, 92)),
                  )),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Große Vielfalt geprüfter Gebrauchter | Kostenlose Lieferung | 21 Tage Geld-zurück-Garantie',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 3, 46, 92)),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VehicleList()))
                          },
                      child: const SizedBox(
                          width: 315,
                          height: 60,
                          child: Center(
                              child: Text(
                            'Jetzt dein Auto finden',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )))),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 3, 46, 92))),
                      child: const SizedBox(
                          width: 315,
                          height: 60,
                          child: Center(
                              child: Text(
                            'Was ist dein Auto noch wert?',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ))))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
