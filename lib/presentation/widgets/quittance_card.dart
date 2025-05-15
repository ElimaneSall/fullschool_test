import 'package:flutter/material.dart';

class QuittanceCard extends StatelessWidget {
  final String date;
  final String amount;
  final String status;

  QuittanceCard({required this.date, required this.amount, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(date),
      subtitle: Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: status == "Payé" ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          status,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
