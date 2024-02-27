import 'package:iot/widget/line_chart_widget.dart';
import 'package:flutter/material.dart';

class LineChartPage extends StatelessWidget {
  const LineChartPage({super.key});
  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xFFFFFFFF),
        shadowColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
          child: LineChartWidget(),
        ),
      );
}
