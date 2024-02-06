import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Moleton extends StatefulWidget {
  const Moleton({super.key});

  @override
  State<Moleton> createState() => _MoletonState();
}

class _MoletonState extends State<Moleton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Loja VIRTUAL', style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
      ),
       body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            color: Colors.deepPurple[50],
            width: double.infinity,
            height: 400,
            child: Center(
              child: Text(
                'Muito bom velo aqui isso significa que vc quer mais detalhes do produto MOLETON',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Expanded(
             child: ListView(
                 
               children: [
                     Image.asset('../assets/moleton.png', width: 150, height: 150),
         ] ),
            ),
    ]));
  }
}