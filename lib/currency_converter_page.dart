import 'package:flutter/material.dart';


class CurrencyConverter extends StatefulWidget{
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();

}


class _CurrencyConverterState extends State<CurrencyConverter> {

  double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  void convert () {
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
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
                  Text(
                      'NGN ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', 
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    TextField(
                      controller: textEditingController,
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