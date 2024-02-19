import 'package:flutter/material.dart';
import 'action_history_table.dart';

class ActionHistoryPage extends StatefulWidget {
  const ActionHistoryPage({super.key});
  @override
  State<ActionHistoryPage> createState() => _ActionHistoryPage();
}

class _ActionHistoryPage extends State<ActionHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(24, 50, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Action History',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF142348),
              ),
            ),
            Container(
              width: double.infinity,
              child: DataTable(columns: [
                DataColumn(
                  label: Text('Device'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
                DataColumn(
                  label: Text('Time'),
                ),
              ], rows: [
                DataRow(cells: [
                  DataCell(Text('Fan 1')),
                  DataCell(Text(
                    'On',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  DataCell(Text('13:45')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fan 1')),
                  DataCell(Text(
                    'Off',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  DataCell(Text('17:45')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Light 1')),
                  DataCell(Text(
                    'On',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  DataCell(Text('14:45')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Fan 1')),
                  DataCell(Text(
                    'Off',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  DataCell(Text('20:45')),
                ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
