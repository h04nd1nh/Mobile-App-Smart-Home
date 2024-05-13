import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPage();
}

class _DataPage extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(24, 50, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Data Sensor',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF142348),
              ),
            ),
            DataTable(columns: [
              DataColumn(
                label: Text('Time'),
              ),
              DataColumn(
                label: Text('Temp'),
              ),
              DataColumn(
                label: Text('Human'),
              ),
              DataColumn(
                label: Text('Light'),
              ),
            ], rows: [
              DataRow(cells: [
                DataCell(Text('13:45')),
                DataCell(Text('24')),
                DataCell(Text('90 %')),
                DataCell(Text('5600')),
              ]),
              DataRow(cells: [
                DataCell(Text('13:55')),
                DataCell(Text('24')),
                DataCell(Text('90 %')),
                DataCell(Text('5600')),
              ]),
              DataRow(cells: [
                DataCell(Text('14:00')),
                DataCell(Text('24')),
                DataCell(Text('90 %')),
                DataCell(Text('5600')),
              ]),
              DataRow(cells: [
                DataCell(Text('14:05')),
                DataCell(Text('24')),
                DataCell(Text('90 %')),
                DataCell(Text('5600')),
              ]),
              DataRow(cells: [
                DataCell(Text('14:10')),
                DataCell(Text('24')),
                DataCell(Text('90 %')),
                DataCell(Text('5600')),
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
