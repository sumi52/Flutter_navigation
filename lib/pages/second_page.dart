import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String routeName = '/second';

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late String msg;
 @override
  void initState() {
   print('initState call');
   super.initState();
  }
 @override
  void didChangeDependencies() {
   msg = ModalRoute.of(context)!.settings.arguments as String;
    print('didChangeDependencies called');
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    print('dispose called');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   print('build called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Text(msg),
      ),
    );
  }
}
