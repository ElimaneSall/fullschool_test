import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String course;
  final String time;
  final String location;
  final String status;

  ScheduleCard({
    required this.course,
    required this.time,
    required this.location,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.schedule, color: Colors.green),
      title: Text(course, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(time),
          Text(location),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(status, style: TextStyle(color: Colors.orange)),
          Icon(Icons.assignment_late, color: Colors.red, size: 18),
        ],
      ),
    );
  }
}
