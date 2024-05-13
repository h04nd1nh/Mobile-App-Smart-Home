import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartHumidityWidget extends StatelessWidget {
  final Key? key;
  final List<Color> gradientColors = [
    const Color(0xFF50E4FF),
    const Color(0xFF2196F3),
  ];

  LineChartHumidityWidget({this.key});

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          backgroundColor: Colors.transparent,
          // baselineY: 17,
          minX: 0,
          maxX: 1440,
          minY: 20,
          maxY: 80,
          titlesData: const FlTitlesData(
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    getTitlesWidget: bottomTitlesWidget,
                    showTitles: true,
                    interval: 1,
                    reservedSize: 40)),
            rightTitles: AxisTitles(
                sideTitles: SideTitles(
              getTitlesWidget: rightTitlesWidget,
              showTitles: true,
              interval: 1,
            )),
            topTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
            )),
            leftTitles: AxisTitles(sideTitles: SideTitles()),
          ),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return const FlLine(color: Color(0xFFD8E4E8), strokeWidth: 1);
            },
            verticalInterval: 360,
            horizontalInterval: 15,
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
                const FlSpot(0, 25),
                const FlSpot(1, 26),
                const FlSpot(2, 24),
                const FlSpot(3, 27),
                const FlSpot(4, 28),
                const FlSpot(5, 30),
                const FlSpot(6, 31),
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

Widget bottomTitlesWidget(double value, TitleMeta meta) {
  const style =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey);

  String text;

  switch (value.toInt()) {
    case 0:
      text = '00h';
      break;
    case 360:
      text = '6h';
      break;
    case 720:
      text = '12h';
      break;
    case 1080:
      text = '18h';
      break;
    default:
      return Container();
  }
  return Text(text, style: style, textAlign: TextAlign.center);
}

Widget rightTitlesWidget(double value, TitleMeta meta) {
  final style = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  String text;
  switch (value.toInt()) {
    case 20:
      text = '20';
      break;
    case 35:
      text = '35';
      break;
    case 50:
      text = '50';
      break;
    case 65:
      text = '65';
      break;
    case 80:
      text = '80';
      break;
    default:
      return Container();
  }
  return Text(text, style: style, textAlign: TextAlign.center);
}
