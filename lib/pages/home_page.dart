import 'package:flutter/material.dart';
import 'package:flutter_navigation/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('Navigation Example'),
     ),
      body: Center(
        child: Column(
          children: [
            Slider(
              min: 0,
                max: 100,
                divisions: 100,
                activeColor: Colors.green,
                inactiveColor: Colors.red,
                label: sliderValue.round().toString(),
                value: sliderValue,
                 onChanged: (value){
                   setState(() {
                      sliderValue = value;
               });
            }),
            Text('${sliderValue.round()}', style: TextStyle(fontSize: 100),),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
              context,
              SecondPage.routeName,

              arguments: 'Hello word').then((_){

                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                  content: const Text ('I am Back'),
                ));
              }),
              child: const Text('NEXT'),
            ),
          ],
         ),
        ),
      );
  }
}

