import 'package:flutter/material.dart';
import 'package:tap_capital/core/constants/app_constants.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartWidget extends StatefulWidget {

final Map<String, List<Map<String, dynamic>>> financials;

  const ChartWidget({super.key, required this.financials});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {

  String selectedChip = AppConstants.ebitda.toLowerCase();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black12, // Color of the border
            width: 1,
          ),
          color: Colors.white,
          shape: BoxShape.rectangle
        ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Text(AppConstants.companyFinancials, style: TextStyle(
              color: Colors.grey
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                borderRadius:const  BorderRadius.all(Radius.circular(23)),
                border: Border.all(
                  color: Colors.black12, // Color of the border
                  width: 1,
                ),
                color:const Color(0xfff3f4f6),
                shape: BoxShape.rectangle
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedChip = AppConstants.ebitda.toLowerCase();
                        });
                      },
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedChip == AppConstants.ebitda.toLowerCase() ? Colors.black12 :const Color(0xfff3f4f6), // Color of the border
                            width: 1,
                          ),
                          color: selectedChip == AppConstants.ebitda.toLowerCase() ? Colors.white :const Color(0xfff3f4f6),
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(23),bottomLeft:Radius.circular(23) ),
                        ),
                          child:const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 6),
                            child:  Text(AppConstants.ebitda),
                          )),
                    ),


                    const SizedBox(
                      width: 2,
                    ),


                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedChip = AppConstants.revenue.toLowerCase();
                        });
                      },
                      child: Container(
                          height: 27,
                          decoration:  BoxDecoration(
                            border: Border.all(
                              color: selectedChip == AppConstants.revenue.toLowerCase() ? Colors.black12 :const Color(0xfff3f4f6), // Color of the border
                              width: 1,
                            ),
                            color: selectedChip == AppConstants.revenue.toLowerCase() ? Colors.white : const Color(0xfff3f4f6),
                            borderRadius:const BorderRadius.only(topRight: Radius.circular(23),bottomRight:Radius.circular(23) ),
                          ),
                          child:const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 6),
                            child:  Text(AppConstants.revenue),
                          )),
                    ),
                  ],
                ),
              ),

            ),
          )
        ],
      ),
      Container(
        height: 1,
        width: double.infinity,
        color: Colors.black12,
      ),

      const SizedBox(height : 20),


      SizedBox(
        height: 200,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ChartScreen(
              selectedChip: selectedChip,
              ebitdaData: widget.financials[AppConstants.ebitda.toLowerCase()]!,
              revenueData: widget.financials[AppConstants.revenue.toLowerCase()]!,
            );
          },
        ),
      ),

      const SizedBox(
        height: 10,
      ),

    ]));

    }
}


// ignore: must_be_immutable
class ChartScreen extends StatelessWidget {

  final List<Map<String, dynamic>> ebitdaData;
  final List<Map<String, dynamic>> revenueData;
  final String selectedChip;
   ChartScreen({super.key, required this.ebitdaData, required this.selectedChip, required this.revenueData});

  var bars = <MonthBar>[];

  void createEbitdaData(){

     for(int i=0; i< ebitdaData.length; i++){

       var intData = int.parse(ebitdaData[i][AppConstants.value].toString());
       final data = intData/10000000;
       bars.add(MonthBar(
           ebitdaData[i][AppConstants.month].toString().substring(0,1),
           data  ,
           0.3));
     }

  }

  void createRevenueData(){

    for(int i=0; i< ebitdaData.length; i++){

      var intData = int.parse(ebitdaData[i][AppConstants.value].toString());
      final data = intData/10000000;
      bars.add(MonthBar(
          ebitdaData[i][AppConstants.month].toString().substring(0,1),
          data ,
          0.37));
    }

  }

  @override
  Widget build(BuildContext context) {

    if(selectedChip == AppConstants.ebitda.toLowerCase()){
      createEbitdaData();
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: BarChart(
                BarChartData(
                  maxY: 3,
                  alignment: BarChartAlignment.spaceAround,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        reservedSize: 36,
                        getTitlesWidget: (v, _) => Text('₹${v.toInt()}L'),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (v, _) =>
                            Text(bars[v.toInt()].label),
                      ),
                    ),
                    topTitles:const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData:const FlGridData(show: true, horizontalInterval: 1),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    for (int i = 0; i < bars.length; i++)
                      BarChartGroupData(
                        x: i,
                        barRods: [
                          BarChartRodData(
                            toY: bars[i].darkValue + bars[i].lightValue,
                            width: 16,
                            rodStackItems: [
                              BarChartRodStackItem(
                                  0, bars[i].darkValue, Colors.black87),
                              BarChartRodStackItem(
                                  bars[i].darkValue,
                                  bars[i].darkValue + bars[i].lightValue,
                                  const Color(0xFF9AD0F5)),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            // dashed divider
            Positioned.fill(
              child: IgnorePointer(child: CustomPaint(painter: DividerPainter())),
            ),
          ],
        ),
      );
    }
    else{
      createRevenueData();
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: BarChart(
                BarChartData(
                  maxY: 3,
                  alignment: BarChartAlignment.spaceAround,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        reservedSize: 36,
                        getTitlesWidget: (v, _) => Text('₹${v.toInt()}L'),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (v, _) =>
                            Text(bars[v.toInt()].label),
                      ),
                    ),
                    topTitles:const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData:const FlGridData(show: true, horizontalInterval: 1),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    for (int i = 0; i < bars.length; i++)
                      BarChartGroupData(
                        x: i,
                        barRods: [
                          BarChartRodData(
                            toY: bars[i].darkValue + bars[i].lightValue,
                            width: 16,
                            rodStackItems: [
                              BarChartRodStackItem(
                                  0, bars[i].darkValue, Colors.black87),
                              BarChartRodStackItem(
                                  bars[i].darkValue,
                                  bars[i].darkValue + bars[i].lightValue,
                                  const Color(0xFF9AD0F5)),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            // dashed divider
            Positioned.fill(
              child: IgnorePointer(child: CustomPaint(painter: DividerPainter())),
            ),
          ],
        ),
      );
    }
  }
}

class MonthBar {
  final String label;
  final double darkValue;
  final double lightValue;
  const MonthBar(this.label, this.darkValue, this.lightValue);
}

class DividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const dashW = 5.0, dashGap = 5.0;
    final paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 1;

    final x = size.width * 4 / 12; // after April
    var y = 0.0;
    while (y < size.height) {
      canvas.drawLine(Offset(x, y), Offset(x, y + dashW), paint);
      y += dashW + dashGap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}