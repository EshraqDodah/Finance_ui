import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(show: true),
        groupsSpace: 29.w,
        alignment: BarChartAlignment.spaceAround,
        maxY: 8,
        minY: 0,
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = AppStyles.mediumGray12InterW500Style;
    String text = switch (value.toInt()) {
      0 => 'Jan',
      1 => 'Feb',
      2 => 'Mar',
      3 => 'Apr',
      4 => 'May',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      space: 8.sp,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        reservedSize: 30,

        showTitles: true,
        interval: 2,
        getTitlesWidget: (value, meta) {
          if (value != 0) {
            return Text(
              "${value.toInt()}K",
              style: AppStyles.mediumGray12InterW500Style,
            );
          } else {
            return Text(
              "${value.toInt()}",
              style: AppStyles.mediumGray12InterW500Style,
            );
          }
        },
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  List<BarChartGroupData> get barGroups => List.generate(5, (index) {
    return BarChartGroupData(
      x: index,
      barRods: [
        BarChartRodData(
          toY: 7,
          color: AppColors.primaryColor,
          width: 12.w,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
        BarChartRodData(
          toY: 5,
          color: Color(0xff303A6E),
          width: 12.w,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
      ],
    );
  });
}
