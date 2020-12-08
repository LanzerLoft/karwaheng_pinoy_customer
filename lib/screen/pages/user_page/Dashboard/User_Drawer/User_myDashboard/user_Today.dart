import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UserToday extends StatefulWidget {
  @override
  _UserTodayState createState() => _UserTodayState();
}

class _UserTodayState extends State<UserToday> {
  final items = List<String>.generate(10, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: CustomPadding.padding8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SfCircularChart(annotations: <CircularChartAnnotation>[
              CircularChartAnnotation(
                  child: Container(
                      child: PhysicalModel(
                          child: Container(),
                          shape: BoxShape.circle,
                          elevation: 10,
                          shadowColor: Colors.black,
                          color: const Color.fromRGBO(230, 230, 230, 1)))),
              CircularChartAnnotation(
                  child: Container(
                      child: const Text('62%',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 25))))
            ], series: <CircularSeries>[
              DoughnutSeries<ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  // Radius of doughnut
                  radius: '50%')
            ]),
            customCard(
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("What I’ve earned today:"),
                      Text("P 88"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: CustomPadding.padding8,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Bill"),
                            Text("200"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order Cost"),
                            Text("300"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Fee"),
                            Text("300"),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: CustomPadding.symetric24,
              child: Text("All"),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true, // use it
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      customCard(ListTile(
                        title: Text('${items[index]}'),
                      )),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
