import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Bond/bond_bloc.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    context.read<BondBloc>().add(GetAllBondsEvent());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body:  Center(
        child: BlocConsumer<BondBloc, BondState>(
          listener: (context, state){

        },
          builder: (context, state){

            if(state is BondLoading){
              return const CircularProgressIndicator();
            }

            if(state is GetAllBondsSuccessState){

              //return Text(state.bondDetails.financials["ebitda"]![1]["value"].toString());

              return  ListView.builder(
                  itemCount: state.bondsList.length,
                  itemBuilder: (context, index) {
                    return Text(state.bondsList[index].companyName);
                  });
            }
            else {
              return const SizedBox();
            }

        })
      ),
    );
  }
}