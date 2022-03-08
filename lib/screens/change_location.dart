import 'package:flutter/material.dart';

class ChangeLocation extends StatefulWidget {
  const ChangeLocation({Key? key}) : super(key: key);

  @override
  State<ChangeLocation> createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('InitState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('Build function ran');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Change Location')),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('$counter'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('Dispose function ran');
  }
}
