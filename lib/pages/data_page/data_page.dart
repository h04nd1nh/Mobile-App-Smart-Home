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
          children: <Widget>[
            const Text(
              'Data',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF142348),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
