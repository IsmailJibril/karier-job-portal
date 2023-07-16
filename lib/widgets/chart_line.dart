
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:karier_job_portal/theme/colors.dart';

List<Color> gradientColors = [primary, secondary];
LineChartData activityData() {
  return LineChartData(
      gridData: FlGridData(show: false, drawVerticalLine: true),
      titlesData: FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(2.6, 2.5),
              
            ],
            isCurved: true,
            color: white,
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
                show: false, gradient: LinearGradient(colors: gradientColors)))
      ]);
}
