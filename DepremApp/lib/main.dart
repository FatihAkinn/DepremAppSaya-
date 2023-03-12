//-- Bağlantılar--//
import 'package:flutter/material.dart';

//--Sayaç Oluşturma--//

class Sayac extends StatefulWidget {
  @override
  _SayacState createState() => _SayacState();
}

//--Sayaça Basınca Arttırma Kodu --//
class _SayacState extends State<Sayac> {
  int _sayac = 0;

  void _sayacArtir() {
    setState(() {
      _sayac++;
    });
  }

//--Sayfa Tasarım Kısmı--//
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Sayac:',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          '$_sayac',
          style: TextStyle(fontSize: 48),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          child: Text('Arttırmak İçin Tıklayınız'),
          onPressed: _sayacArtir,
        ),
      ],
    );
  }
}
//--Sayfa Tasarım Bitişi--//

//--Navbar Kısmı(Content)--//
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deprem App Zikir Matik',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Deprem App Zikir Matik'),
        ),
        body: Center(
          child: Sayac(),
        ),
      ),
    );
  }
}
