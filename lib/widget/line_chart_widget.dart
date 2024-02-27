import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({super.key});

  final List<Color> gradientColors = [
    const Color(0xFF50E4FF),
    const Color(0xFF2196F3),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          backgroundColor: Colors.transparent,
          minX: 0,
          maxX: 24,
          minY: 0,
          maxY: 40,

          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return const FlLine(color: Color(0xFFD8E4E8), strokeWidth: 1);
            },
            drawVerticalLine: false,
            horizontalInterval: 10,
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: const Color(0xFFD8E4E8), 
              width: 1
            ),
          ),

          titlesData: FlTitlesData(
            show: true,
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                reservedSize: 24,
                interval: 6,
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() == 24) {
                    return Container();
                  }
                  else {
                    return Text(value.toInt().toString() + 'h',textAlign: TextAlign.left);
                  }
                },
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 10,
                reservedSize: 40,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              lineChartStepData: const LineChartStepData(
                stepDirection: 1,
              ),
              color: const Color(0xFF586AF6),
              spots: [
                const FlSpot(0, 20),
                const FlSpot(0.24, 11),
                const FlSpot(1, 18),
                const FlSpot(2, 19.5),
                const FlSpot(3, 21),
                const FlSpot(4, 21.2),
                const FlSpot(5, 20),
                const FlSpot(6, 17.6),
              ],
              isCurved: true,
              barWidth: 1.5,
              dotData: const FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    ColorTween(begin: gradientColors[0], end: gradientColors[1])
                        .lerp(0.2)!
                        .withOpacity(0.2),
                    ColorTween(begin: gradientColors[0], end: gradientColors[1])
                        .lerp(0.2)!
                        .withOpacity(0.2),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
