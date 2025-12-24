import 'package:finance_ui/features/statistics/widgets/chart_section_widget.dart';
import 'package:finance_ui/features/statistics/widgets/custom_statistics_item.dart';
import 'package:finance_ui/features/statistics/widgets/custom_top_par_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/spacing_widgets.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpace(16),
          CustomTopParWidget(text: "Reload", icon: Icons.more_horiz_rounded),
          HeightSpace(24),
          ChartSectionWidget(),
          HeightSpace(16),
          Expanded(
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomStatisticsItem(
                  mainText: "15000 JD",
                  subText: "Income",
                  iconData: Icons.input_rounded,
                ),
                CustomStatisticsItem(
                  mainText: "35000 JD",
                  subText: "Outcome",
                  iconData: Icons.output_rounded,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
