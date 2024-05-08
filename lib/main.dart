import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String texto = 'Texto noggers';

  void mudarTexto() {
    setState(() {
      texto = 'Texto muito poggers!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu aplicativo de mudança de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              texto,
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: mudarTexto,
              child: Text('Mudar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
