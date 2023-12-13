import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/bloc/bloc.dart';

import 'bloc/states.dart';
class Addmed extends StatelessWidget {
  const Addmed({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey=GlobalKey<FormState>();
    var imgController=TextEditingController();
    var nameController=TextEditingController();
    var priceController=TextEditingController();
    return  BlocConsumer<PharmacyBloc,States>(
      listener: (context, state) {
        
      },
      builder:(context,state)=> 
    Scaffold(
      appBar: AppBar(
        title:const Text('Add New Item'),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                TextFormField(
                  controller:imgController ,
                   validator: (value) {
                      if (value!.isEmpty) {
                        return ' Image must not be empty';
                      }
                      return null;
                    },
                   decoration: const InputDecoration(
                        label: Text('medicin image'),
                        prefixIcon: Icon(Icons.photo_camera),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 18, 0, 0)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        
                        
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                  ),
               const SizedBox(height: 10,),
               TextFormField(
                  controller:nameController ,
                   validator: (value) {
                      if (value!.isEmpty) {
                        return ' name must not be empty';
                      }
                      return null;
                    },
                   decoration: const InputDecoration(
                        label: Text('medicin name'),
                        prefixIcon: Icon(Icons.medication),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 18, 0, 0)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                             border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                  ),
               const SizedBox(height: 10,),
                  
               TextFormField(
                  controller:priceController ,
                   validator: (value) {
                      if (value!.isEmpty) {
                        return ' price must not be empty';
                      }
                      return null;
                    },
                   decoration: const InputDecoration(
                        label: Text('medicin price'),
                        prefixIcon: Icon(Icons.price_change_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 18, 0, 0)),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                             border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                  ),
               const SizedBox(height: 10,),
               Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.5,
                child: TextButton(onPressed: (){
                  if(formkey.currentState!.validate()){

                  }
                },
                child:const Text('Confirm',style: TextStyle(color: Colors.white),),
                ),
               )
              ],
            ),
          ),
        ),
      ),)
    );
  }
}