import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/bloc/bloc.dart';
import 'package:pharmacy/bloc/states.dart';
import 'package:pharmacy/firstScreen.dart';

void main(){
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PharmacyBloc(),
      child: BlocConsumer<PharmacyBloc,States>(
        listener: (context, state) {
          
        },
        builder: (context, state)=> const MaterialApp(
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
      
    );
    
  }

  
}