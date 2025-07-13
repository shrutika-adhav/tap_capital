import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_capital/feature/bloc/Bond/bond_bloc.dart';
import 'package:tap_capital/feature/pages/home_page.dart';
import '../models/bond_data.dart';
import '../widgets/scroll_bar_view_widget.dart';

class BondDetailsPage extends StatefulWidget {

  static MaterialPageRoute route() => MaterialPageRoute(builder: (context) => const BondDetailsPage());

  const BondDetailsPage({super.key});

  @override
  State<BondDetailsPage> createState() => _BondDetailsPageState();
}

class _BondDetailsPageState extends State<BondDetailsPage> {


  @override
  void initState() {
    super.initState();
    context.read<BondBloc>().add(GetBondDetailsEvent());
  }


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value) async{
        Navigator.pushReplacement(context, HomePage.route());
      },
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
            automaticallyImplyLeading : false,
          backgroundColor: const Color(0xfff3f4f6),
          leading: Container(
            margin:const EdgeInsets.only(left: 17),
            //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12, // Color of the border
                  width: 1,
                ),
                color: Colors.white,
                shape: BoxShape.circle
            ),
            child: IconButton(
              onPressed: (){
                Navigator.pushReplacement(context, HomePage.route());
                //Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),


        ),
        backgroundColor:const Color(0xfff3f4f6),
        body: BlocBuilder<BondBloc, BondState>(
          builder: (context, state){

            if(state is BondLoading){
              return const Center(child:  CircularProgressIndicator());
            }

            if(state is GetBondDetailsSuccessState){

              final BondData bondDetails = state.bondDetails;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black12, // Color of the border
                              width: 1,
                            ),
                            color: Colors.white,
                            shape: BoxShape.rectangle
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            fit: BoxFit.fill,
                            height: 60,
                            image: NetworkImage(bondDetails.logo,),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20,),

                       Text(bondDetails.companyName,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18.5
                       ),),

                      const SizedBox(height: 20,),

                      Text(bondDetails.description,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          color: Colors.black87
                        ),),

                        const SizedBox(height: 20,),

                        Row(
                          children: [
                            Chip(
                              label: Text('ISIN: ${bondDetails.isin}',
                                style:const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                              color: const WidgetStatePropertyAll(Color(0xffe5e9ff)),
                              side: const BorderSide(
                                  color: Color(0xffe5e9ff)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Chip(
                              label: Text(bondDetails.status,
                                style:const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ),),
                              color: const WidgetStatePropertyAll(Color(0xffe5e9ff)),
                              side: const BorderSide(
                                  color: Color(0xffe5e9ff)
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20,),

                      ScrollBarViewWidget(
                        financials : bondDetails.financials,
                        issuerDetails: bondDetails.issuerDetails,
                        prosAndCons: bondDetails.prosAndCons,

                      ),

                    ],
                  ),
                ),
              );
            }
            if(state is BondFailureState){
              return const Center(child:  Text("Error occurred"));
            }
            else {
              return const SizedBox();
            }

          },
        )
      ),
    );
  }
}
