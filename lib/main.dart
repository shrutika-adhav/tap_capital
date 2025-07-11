import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_capital/feature/bloc/Bond/bond_bloc.dart';
import 'package:tap_capital/feature/pages/home_page.dart';
import 'package:tap_capital/init_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  //await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TAP Invest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => BondBloc(
            bondRepository: serviceLocator()), // Or YourCubit()
        child: const HomePage(),
      )
    );
  }
}


