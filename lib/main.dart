import 'package:flutter/material.dart';
import '../dahua.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCTV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CCTV(),
    );
  }
}

class CCTV extends StatefulWidget {
  const CCTV({Key? key}) : super(key: key);

  @override
  State<CCTV> createState() => _CCTV();
}

class _CCTV extends State<CCTV> {
  String _ret = 'NA';
  late DaHua _dahua;

  @override
  void initState() {
    super.initState();
    _dahua = DaHua();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CCTV Native"),
      ),
      body: Center(
        child: Text('Return: $_ret'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final _r = await _dahua.init();
          setState(() {
            _ret = _r;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
