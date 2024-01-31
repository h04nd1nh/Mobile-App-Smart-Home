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
          // baselineY: 17,
          minX: 0,
          maxX: 24,
          minY: 3,
          maxY: 33,

          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return const FlLine(color: Color(0xFFD8E4E8), strokeWidth: 1);
            },
            drawVerticalLine: false,
            horizontalInterval: 6,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              lineChartStepData: const LineChartStepData(
                stepDirection: 1,
              ),
              color: const Color(0xFF586AF6),
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
