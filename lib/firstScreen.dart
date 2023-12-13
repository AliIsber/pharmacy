import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/bloc/bloc.dart';
import 'package:pharmacy/bloc/states.dart';
import 'package:pharmacy/models/medModel.dart';
import 'package:pharmacy/second.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PharmacyBloc,States>(
      listener: (context, state) {
        
      },
      builder:(context,state)=> Scaffold(
        appBar: AppBar(
          title: const Text('pharmacy'),
          leading: Container(
              child: const Image(
                  height: double.maxFinite,
                  image: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/00/89/89/91/1000_F_89899105_UN5Bv2hYUx0TFzBdwpi8K1rkPzl3dYLx.jpg',)
                   , fit: BoxFit.cover,  ),
                      ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Addmed()));
          },
          child: const Icon(Icons.add),
        ),
        body: ListView.separated(
            itemBuilder: (constext, index) => buildmedIdem(PharmacyBloc.getbloc(context).medicine[index]),
            separatorBuilder: (constext, index) =>const Divider(),
            itemCount: 5),
      ),
    );
  }
  ////image https://as2.ftcdn.net/v2/jpg/00/89/89/91/1000_F_89899105_UN5Bv2hYUx0TFzBdwpi8K1rkPzl3dYLx.jpg

  Widget buildmedIdem(MedModel med) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Image(
                  image: NetworkImage(
                      '${med.image}')),
            ),
           const SizedBox(
              width: 20.0,
            ),
            Text('${med.name}'),
           const Spacer(),
            Container(
              
              child: TextButton(
                
                onPressed: (){}, child: Text('${med.price}\$')),
            ),
          ],
        ),
  );
}
