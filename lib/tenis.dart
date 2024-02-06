import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Tenis extends StatefulWidget {
  const Tenis({super.key});

  @override
  State<Tenis> createState() => _TenisState();
}

class _TenisState extends State<Tenis> {
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
                'Muito bom velo aqui isso significa que vc quer mais detalhes do produto TENIS',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 18),
              )
            ),
          ),
           Expanded(
             child: ListView(
                 
               children: [
                     Image.asset('../assets/tenis.png', width: 150, height: 150),
         ] ),
            ),
          ]),
    );
  }
}