import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ActionHistoryTable extends StatefulWidget {
  const ActionHistoryTable({super.key});

  @override
  State<ActionHistoryTable> createState() => _ActionHistoryTable();
}

class _ActionHistoryTable extends State<ActionHistoryTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
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
