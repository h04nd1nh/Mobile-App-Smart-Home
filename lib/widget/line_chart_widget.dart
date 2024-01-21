import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          backgroundColor: Colors.transparent,
          minX: 0,
          maxX: 8,
          minY: 17,
          maxY: 30,
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return const FlLine(color: Color(0xFFD8E4E8), strokeWidth: 0.5);
            },
            drawVerticalLine: false,
            horizontalInterval: 2,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              color: const Color(0xFFD8E4E8),
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
              barWidth: 1,
            ),
          ],
        ),
      );
}
