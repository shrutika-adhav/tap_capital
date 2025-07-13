import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_capital/core/constants/app_constants.dart';
import 'package:tap_capital/feature/pages/bond_details_page.dart';
import '../../core/styles/decorations.dart';
import '../bloc/Bond/bond_bloc.dart';
import '../models/bond.dart';
import '../widgets/bond_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(builder: (context) => const HomePage());


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  final TextEditingController searchController = TextEditingController();

  List<Bond> displayList = [];
  bool _hasInitialized = false;


  @override
  void initState() {
    super.initState();
    context.read<BondBloc>().add(GetAllBondsEvent());

  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xfff3f4f6),

      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xfff3f4f6),
        title:const Padding(
          padding:  EdgeInsets.all(8.0),
          child:  Text(AppConstants.home,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),

      body:  Center(
        child: BlocBuilder<BondBloc, BondState>(

          builder: (context, state){

            if(state is BondLoading){
              return const CircularProgressIndicator();
            }

            if(state is GetAllBondsSuccessState){

              if (!_hasInitialized) {
                displayList = state.bondsList;
                _hasInitialized = true;
              }

              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Container(
                      decoration:  BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                      ),

                      child: TextField(
                        decoration: kTextFieldDecoration,
                        cursorColor: Colors.black,
                        onChanged: (value){
                          setState(() {

                            final String query = searchController.text.trim().toLowerCase();

                            displayList = state.bondsList.where((bond) =>
                            bond.companyName.toLowerCase().contains(query) ||
                                bond.isin.toLowerCase().contains(query)).toList();
                          });

                        },
                        controller: searchController,

                      ),
                    ),

                    const SizedBox(height: 37,),

                    const Text(AppConstants.suggestedResults,
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold
                    ),),

                    const SizedBox(height: 16,),
                    Expanded(
                      child: Container(
                        decoration:  BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          //shape: BoxShape.rectangle
                        ),
                        child: ListView.builder(
                            itemCount:displayList.length,
                            itemBuilder: (context, index) {

                              return GestureDetector(
                                onTap: (){
                                  searchController.clear();
                                  Navigator.push(context, BondDetailsPage.route());
                                },
                                child: BondCard(
                                  onPressed: (){
                                    searchController.clear();
                                    Navigator.push(context, BondDetailsPage.route());
                                  },
                                  bond: displayList[index], highlight: searchController.text.trim(),
                                ),
                              ) ;


                            }),
                      ),
                    ),
                  ],
                ),
              );
            }
            else {
              return const SizedBox();
            }

        })
      ),
    );
  }

}

