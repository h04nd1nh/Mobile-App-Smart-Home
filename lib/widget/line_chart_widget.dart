import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
    LineChartData(
      minX: 0,
      maxX: 6,
      minY: 17,
      maxY: 30,
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color:  Color(0xff37434d),
            strokeWidth: 1
          );
        },
        drawVerticalLine: true,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color:  Color(0xff37434d),
            strokeWidth: 1
          );
        },
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 1),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: [
            const FlSpot(0, 20),
            const FlSpot(1, 18),
            const FlSpot(2, 19.5),
            const FlSpot(3, 21),
            const FlSpot(4, 21.2),
            const FlSpot(5, 20),
            const FlSpot(6, 17.6),
          ],
          isCurved: true,
          barWidth: 5,
        ),
      ],
    ),
  );
}