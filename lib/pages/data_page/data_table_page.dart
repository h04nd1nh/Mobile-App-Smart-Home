import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({super.key});

  @override
  State<DataTablePage> createState() => _DataTablePage();
}

class _DataTablePage extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    color: const Color(0xFF142348),
                    size: 30,
                  ),
                ),
                Text(
                  'Sensor 1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF142348),
                  ),
                ),
              ],
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
