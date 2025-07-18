import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Não espere por oportunidades. Crie-as.",
    "O sucesso é a soma de pequenos esforços repetidos todos os dias.",
    "A jornada de mil milhas começa com um único passo."
  ];

  var _frase_gerada = "";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _frase_gerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffef0),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 100,
          children: [
           Text(
                  _frase_gerada,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JosefinSans'
                ),
                textAlign: TextAlign.center,

              ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: Colors.grey,
                  width: 2
                )
              ),
              child: IconButton(
                  onPressed: _gerarFrase,
                  icon: Icon(Icons.refresh, color: Colors.black,),
                iconSize: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}

