import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loja/tenis.dart';
import 'package:loja/camiseta.dart';
import 'package:loja/moleton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Loja VIRTUAL')
          ),
          body: ListView(
         
            children: [              
              Text("Olá, Bem-vindo!", style: GoogleFonts.poppins(fontSize: 24)),
              Text("Escolha a opção desejada.", textAlign: TextAlign.center, style: GoogleFonts.openSans()),
              Container(height: 60,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:[
              ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, "/tenis"), child: Text("Tenis")),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, "/roupas"), child: Text("Roupas")),
              ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, "/produto"),child: Text("Produtos")),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context,"SegundaRota"), child: Text("Carrinho"))
              ]
              ),      
      Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Tenis())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Image.asset('../assets/tenis.png', width: 150, height: 150),
                    Text('TENIS',
                        style: GoogleFonts.indieFlower(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
            Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Camiseta())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Image.asset('../assets/camiseta.png', width: 150, height: 150),
                    Text('camiseta',
                        style: GoogleFonts.indieFlower(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),  Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Moleton())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Image.asset('../assets/moleton.png', width: 150, height: 150),
                    Text('MOLETON',
                        style: GoogleFonts.indieFlower(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          )
    ])
    )
    ;
    }

  }


class tenis extends StatelessWidget {
  final int score;

  const tenis({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Maritimo!'),
      ),
      body: Center(
        child: Text('Seus Pontos foram: $score'),
      ),
    );
  }
}
