import 'package:iot/widget/line_chart_widget.dart';
import 'package:flutter/material.dart';

class LineChartPage extends StatelessWidget {
  const LineChartPage({super.key});
  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color(0xFF4C7380),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: LineChartWidget(),
        ),
      );
}
