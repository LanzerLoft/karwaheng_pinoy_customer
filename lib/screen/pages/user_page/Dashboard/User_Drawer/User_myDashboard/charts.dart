import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class RecognizedMonthChart extends StatefulWidget {
  final String monthlyIncome;
  final double week1;
  final double week2;
  final double week3;
  final double week4;

  RecognizedMonthChart({
    Key key,
    @required this.monthlyIncome,
    @required this.week1,
    @required this.week2,
    @required this.week3,
    @required this.week4,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => RecognizedMonthChartState();
}

class RecognizedMonthChartState extends State<RecognizedMonthChart> {
  final Color dark = const Color(0xff3b8c75);
  final Color normal = const Color(0xff64caad);
  final Color light = const Color(0xff73e8c9);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.w,
      child: customCard(
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Monthly Income",
                style: CustomTextStyle.textStyleGrey16,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: listTextPesoIconToday(widget.monthlyIncome),
            ),
            Container(
              height: 20.0.h,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.center,
                    barTouchData: BarTouchData(
                      enabled: false,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                            color: Color(0xff939393), fontSize: 13),
                        margin: 10,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'Week 1';
                            case 1:
                              return 'Week 2';
                            case 2:
                              return 'Week 3';
                            case 3:
                              return 'Week 4';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                   
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    groupsSpace: 10.0.w,
                    barGroups: getData(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.week1,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.week2,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.week3,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.week4,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
