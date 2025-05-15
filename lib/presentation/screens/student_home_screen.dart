import 'package:flutter/material.dart';
import '../widgets/quittance_card.dart';
import '../widgets/student_stat_card.dart';
import '../widgets/schedule_card.dart';

class StudentHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(), // Drawer à personnaliser plus tard OK
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://img.freepik.com/photos-gratuite/coup-mise-au-point-peu-profonde-enfant-africain-apprenant-ecole_181624-36498.jpg?semt=ais_hybrid&w=740"),  radius: 20,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopStats(),
            _buildSchedule(),
            _buildStatsSection(),
            _buildQuittancesList(),
            _buildAdBanner(),
            _buildNewsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopStats() {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StudentStatCard(title: "Solde à payé", value: "35 000 FCFA"),
          StudentStatCard(title: "Quittance impayé", value: "5"),
          StudentStatCard(title: "Solde échu", value: "25 000 FCFA"),
        ],
      ),
    );
  }

  Widget _buildSchedule() {
    return Column(
      children: [
        ScheduleCard(
          course: "MGT 101 - Management des entreprises",
          time: "09:10 AM - 10:00 AM",
          location: "Room 101",
          status: "Maintenant",
        ),
        ScheduleCard(
          course: "EC 203 - Introduction à l'économie",
          time: "10:00 AM",
          location: "Salle 213",
          status: "in 45min",
        ),
      ],
    );
  }

  Widget _buildStatsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StudentStatCard(title: "Taux de\nprésence", value: "20%"),
          StudentStatCard(title: "Absences/mois", value: "10H"),
          StudentStatCard(title: "Absences/semestre", value: "5H"),
        ],
      ),
    );
  }

  Widget _buildQuittancesList() {
    return Column(
      children: List.generate(5, (index) {
        return QuittanceCard(
          date: "05/07/2024 à 11H55 GMT",
          amount: "150 000 F CFA",
          status: index % 2 == 0 ? "Payé" : "Impayé",
        );
      }),
    );
  }

  Widget _buildAdBanner() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text("Bannière Publicitaire Placeholder")),
      ),
    );
  }

  Widget _buildNewsSection() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(child: Image.network('https://img.freepik.com/photos-gratuite/coup-mise-au-point-peu-profonde-enfant-africain-apprenant-ecole_181624-36498.jpg?semt=ais_hybrid&w=740')),
          SizedBox(width: 8),
          Expanded(child: Image.network('https://img.freepik.com/photos-gratuite/coup-mise-au-point-peu-profonde-enfant-africain-apprenant-ecole_181624-36498.jpg?semt=ais_hybrid&w=740')),
        ],
      ),
    );
  }
}
