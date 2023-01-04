
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider/firsttry.dart';

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),

      ),

      body: Consumer(

      builder: (context,ref ,child){

      final counter = ref.watch(counterProvider).number;
      return Container(

        child: Center(
          child: Column(
            children: [
              Text('$counter', style: TextStyle(fontSize: 45),),
              ElevatedButton(

                  onPressed: () {
                    ref.read(counterProvider).increment();
                  }, child: Text('incerment'))


            ],


          ),


        ),

      );
    }




      ),





    );
  }
}

