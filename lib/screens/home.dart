import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(
                Icons.edit_location_rounded,
                color: Colors.white,
              ),
              label: const Text(
                'Change Location',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink[600])),
            ),
          )
        ],
      ),
    ));
  }
}
