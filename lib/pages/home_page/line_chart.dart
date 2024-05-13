import 'package:flutter/material.dart';
import 'package:iot/widget/line_char_light_widget.dart';
import 'package:iot/widget/line_chart_humidity_widget.dart';
import 'package:iot/widget/line_chart_temperature_widget.dart';

class LineChartPage extends StatelessWidget {
  String lineChartType;
  LineChartPage({super.key, required this.lineChartType});

  Widget lineChart() {
    if (lineChartType == 'temp') {
      return LineChartTemperatureWidget();
    } else if (lineChartType == 'humidity') {
      return LineChartHumidityWidget();
    } else {
      return LineChartLightWidget();
    }
  }

  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: const Color(0xFFFFFFFF),
        shadowColor: Colors.transparent,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
            child: lineChart()),
      );
}
