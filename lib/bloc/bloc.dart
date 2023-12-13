import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pharmacy/bloc/states.dart';
import 'package:pharmacy/models/medModel.dart';
class PharmacyBloc extends Cubit<States> {
  PharmacyBloc() : super(InitialState());

  static PharmacyBloc getbloc (context) => BlocProvider.of(context);
  
  void addItem({
    required name,
    required image,
    required price,
  }){
    emit(AddLoadingState());
    MedModel med=MedModel(image: image, name: name, price: price);
    FirebaseFirestore.instance.collection('medicin').add(med.tomap()).then((value){
emit(AddSuccessState());
    }).catchError((error){
      emit(AddErrorState(error.toString()));
    });

  }

  List<MedModel> medicine=[];
  void get(){
emit(GetLoadingState());
FirebaseFirestore.instance.collection('medicin').get().then((value) {
  value.docs.forEach((element) {
    medicine.add(MedModel.fromJson(element.data()));
  });
emit(GetSuccessState());
}).catchError((error){
emit(GetErrorState());
});
  }
  
  }