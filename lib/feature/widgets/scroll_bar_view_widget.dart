
import 'package:flutter/material.dart';
import 'package:tap_capital/core/constants/app_constants.dart';
import 'package:tap_capital/feature/widgets/pros_and_cons.dart';

import 'chart_widget.dart';
import 'issuer_details.dart';

class ScrollBarViewWidget extends StatefulWidget {
  
  final Map<String, dynamic> issuerDetails;
  final Map<String, List<Map<String, dynamic>>> financials;
  final Map<String, dynamic> prosAndCons;
  
  const ScrollBarViewWidget({
    required this.issuerDetails,
    required this.prosAndCons, required this.financials
  });
  
  @override
  _ScrollBarViewWidgetState createState() => _ScrollBarViewWidgetState();
}

class _ScrollBarViewWidgetState extends State<ScrollBarViewWidget> {
  int _selectedIndex = 0;

  final List<String> items = [AppConstants.isinAnalysis, AppConstants.prosAndCons];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(items.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            child: Container(
              width: 150,
              alignment: Alignment.center,
              child: Text(
                items[index],
                style: TextStyle(
                  fontSize: 18,
                  color: _selectedIndex == index ? Colors.blue.shade800 : Colors.grey,
                ),
              ),
            ),
          );
        }),
      ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(items.length, (index) {
            return Container(
              width: 150,
              height:(_selectedIndex == index)? 2 : 1.5,
              color: _selectedIndex == index ? Colors.blue.shade800 : Colors.grey[300],
            );
          }),
        ),
        const SizedBox(height: 18),
        (_selectedIndex == 0) ?
        Column(
          children: [
            ChartWidget(financials: widget.financials,),
            const SizedBox(height: 20,),
            IssuerDetails(issuerDetails: widget.issuerDetails),
          ],
        ) :
        ProsAndCons(prosAndCons: widget.prosAndCons),
        const SizedBox(height: 20),
    ],
    );
  }
}