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
            // Padding(
            //   padding: EdgeInsets.only(top: 20),
            //   child: Text(
            //     "Monthly Income",
            //     style: CustomTextStyle.textStyleGrey16,
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20),
            //   child: listTextPesoIconToday(widget.monthlyIncome),
            // ),
            Container(
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
                        getTextStyles: (value) => const TextStyle(
                            color: Color(
                              0xff939393,
                            ),
                            fontSize: 10),
                        margin: 32,
                        reservedSize: 0,
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

class RecognizedWeeklyData extends StatefulWidget {
  // final String weeklyIncome;
  final double day1;
  final double day2;
  final double day3;
  final double day4;
  final double day5;
  final double day6;
  final double day7;

  RecognizedWeeklyData({
    Key key,
    // @required this.weeklyIncome,
    @required this.day1,
    @required this.day2,
    @required this.day3,
    @required this.day4,
    @required this.day5,
    @required this.day6,
    @required this.day7,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => RecognizedWeeklyDataState();
}

class RecognizedWeeklyDataState extends State<RecognizedWeeklyData> {
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
            // Padding(
            //   padding: EdgeInsets.only(top: 20),
            //   child: Text(
            //     "Weekly Income",
            //     style: CustomTextStyle.textStyleGrey16,
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20),
            //   child: listTextPesoIconToday(widget.weeklyIncome),
            // ),
            Container(
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
                            color: Color(0xff939393), fontSize: 9),
                        margin: 10,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'Day 1';
                            case 1:
                              return 'Day 2';
                            case 2:
                              return 'Day 3';
                            case 3:
                              return 'Day 4';
                            case 4:
                              return 'Day 5';
                            case 5:
                              return 'Day 6';
                            case 6:
                              return 'Day 7';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                            color: Color(
                              0xff939393,
                            ),
                            fontSize: 10),
                        margin: 32,
                        reservedSize: 0,
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    groupsSpace: 3.0.w,
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
              width: 25,
              y: widget.day1,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 25,
              y: widget.day2,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 25,
              y: widget.day3,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 25,
              y: widget.day4,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 25,
              y: widget.day5,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 25,
              y: widget.day6,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 25,
              y: widget.day7,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}

class RecognizedYearChart extends StatefulWidget {
  final double q1;
  final double q2;
  final double q3;
  final double q4;

  RecognizedYearChart({
    Key key,
    @required this.q1,
    @required this.q2,
    @required this.q3,
    @required this.q4,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => RecognizedYearChartState();
}

class RecognizedYearChartState extends State<RecognizedYearChart> {
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
            Container(
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
                              return 'Q1';
                            case 1:
                              return 'Q2';
                            case 2:
                              return 'Q3';
                            case 3:
                              return 'Q4';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                            color: Color(
                              0xff939393,
                            ),
                            fontSize: 10),
                        margin: 32,
                        reservedSize: 0,
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
              y: widget.q1,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.q2,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.q3,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.q4,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}

class RecognizedQuarterData extends StatefulWidget {
  final double month1;
  final double month2;
  final double month3;

  RecognizedQuarterData({
    Key key,
    @required this.month1,
    @required this.month2,
    @required this.month3,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => RecognizedQuarterDataState();
}

class RecognizedQuarterDataState extends State<RecognizedQuarterData> {
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
            Container(
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
                              return 'Month 1';
                            case 1:
                              return 'Month 2';
                            case 2:
                              return 'Month 3';

                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                            color: Color(
                              0xff939393,
                            ),
                            fontSize: 10),
                        margin: 32,
                        reservedSize: 0,
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
              y: widget.month1,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.month2,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 1,
        barRods: [
          BarChartRodData(
              width: 35,
              y: widget.month3,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
