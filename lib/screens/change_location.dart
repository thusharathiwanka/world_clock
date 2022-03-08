import 'package:flutter/material.dart';

import 'package:world_clock/services/world_time.dart';

class ChangeLocation extends StatefulWidget {
  const ChangeLocation({Key? key}) : super(key: key);

  @override
  State<ChangeLocation> createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    void updateTime(index) async {
      WorldTime worldTime = locations[index];
      await worldTime.getTime();
      Navigator.pop(context, {
        'location': worldTime.location,
        'time': worldTime.time,
        'flag': worldTime.flag,
        'isDayTime': worldTime.isDayTime
      });
    }

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(title: const Text('Change Location')),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                child: Card(
                    child: ListTile(
                        onTap: () {
                          updateTime(index);
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/${locations[index].flag}'),
                        ),
                        title: Text(
                          locations[index].location,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ))),
              );
            },
            itemCount: locations.length));
  }
}
