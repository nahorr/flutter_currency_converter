import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  void convert () {

    if (kDebugMode) {
      print(10*10);
    }

  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      '0', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                    TextField(
                      controller: TextEditingController(),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Please enter amount in Naira',
                        prefixIcon: Icon(Icons.monetization_on),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            ),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                        ),
                        onPressed: convert,

                        child: const Text('Convert'),
                        ),
                    )
                ],
              ),
            ),
          ),
          backgroundColor: Colors.deepOrange,
        ),
    );

  }
}