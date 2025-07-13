import 'package:flutter/material.dart';
import 'package:tap_capital/core/constants/app_constants.dart';

class ProsAndCons extends StatelessWidget {

  final Map<String, dynamic> prosAndCons;
  const ProsAndCons({super.key , required this.prosAndCons});

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

           const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 17.0),
              child: Text(AppConstants.prosAndCons,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            ),Container(
              height: 1,
              width: double.infinity,             color: Colors.black12, // Color of the line
            ),

           const SizedBox(height: 10,),

            ListOfData(type: AppConstants.pros.toLowerCase(),
            dataList: prosAndCons[AppConstants.pros.toLowerCase()],),

            const SizedBox(height: 20,),

            ListOfData(type: AppConstants.cons.toLowerCase(),
              dataList: prosAndCons[AppConstants.cons.toLowerCase()],),

            const SizedBox(height: 20,),
          ],
        ),
    );
  }
}


class ListOfData extends StatelessWidget {

  final String type;
  final List<String> dataList;
  const ListOfData({super.key, required this.type, required this.dataList});

  Widget singleRow(String value){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(

        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (type == AppConstants.pros.toLowerCase())?
          Container(
            margin: const EdgeInsets.only(left: 13),
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                border: Border.all(
                  color:const  Color(0xffebfffa),
                  width: 1,
                ),
                color:const Color(0xffebfffa),
                shape: BoxShape.circle
            ),
            child:const Icon(
              size:17.0,
              Icons.check,color: Color(0xff228B22),),
          ) :


          Container(
            margin: const EdgeInsets.only(left: 13),
            padding: const EdgeInsets.symmetric(horizontal: 7),
            decoration: BoxDecoration(
                border: Border.all(
                  color:const  Color(0xffffedd8),
                  width: 1,
                ),
                color:const Color(0xffffedd8),
                shape: BoxShape.circle
            ),
            child:const Padding(
              padding:  EdgeInsets.only(left: 5.5, right: 5.5, top: 5.5),
              child:  Text("!",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffcc7000),
                )
                // size:17.0,
                // Icons.check,color:
                ),
            ),
          ),
           const SizedBox(width: 20,),
          Flexible(
              child: Text(value,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),
                overflow: TextOverflow.fade,
          softWrap: true,))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [(type == AppConstants.pros.toLowerCase())?
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.0),
            child:  Text(AppConstants.pros,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
              ),),
          ): const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.0),
            child:  Text(AppConstants.cons,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffcc7000)
              ),),
          ),

            ...List.generate(
              dataList.length, (index){
            return  singleRow(dataList[index]);
          }),]
        )]
    );
  }
}
