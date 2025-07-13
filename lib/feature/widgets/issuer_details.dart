
import 'package:flutter/material.dart';
import 'package:tap_capital/core/constants/app_constants.dart';

class IssuerDetails extends StatelessWidget {

   final Map<String, dynamic> issuerDetails;

   const IssuerDetails({super.key , required this.issuerDetails});

  @override
  Widget build(BuildContext context) {


    final List<String> issuerKeys = issuerDetails.keys.toList();
    final List issuerValues = issuerDetails.values.toList();


    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
          color: Colors.white,
          shape: BoxShape.rectangle
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16.0),
            child: Row(
              children: [
                Icon(Icons.account_box_outlined),
                SizedBox(width: 10,),
                Text(AppConstants.issuerDetails,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black12,
          ),
          ...List.generate(
              issuerDetails.length, (index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 10),
                child: DetailsContainer(
                  field: issuerKeys[index] ,
                  value: issuerValues[index].toString(),
                )
              );
            }),
        ]
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {

  final String field;
  final String value;
  const DetailsContainer({super.key, required this.field, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppConstants.issuerDetailsMap[field]!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),),
        const SizedBox(height: 2,),
        Text(value,
        style: const TextStyle(
        fontWeight: FontWeight.bold,
        ),)
      ],
    );
  }
}
